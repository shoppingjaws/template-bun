#!/bin/bash
set -euo pipefail

# release環境の作成（mainブランチのみアクセス可）
REPO="$(gh repo view --json nameWithOwner -q .nameWithOwner)"
gh api --method PUT "repos/${REPO}/environments/release" \
  --field "deployment_branch_policy[protected_branches]=false" \
  --field "deployment_branch_policy[custom_branch_policies]=true"
gh api --method POST "repos/${REPO}/environments/release/deployment-branch-policies" \
  --field "name=main" --field "type=branch"

# GitHub Actionsによるプルリクエスト作成・承認を許可
gh api --method PUT "repos/${REPO}/actions/permissions/workflow" \
  --field "can_approve_pull_request_reviews=true" \
  --field "default_workflow_permissions=read"

# マージ時にブランチを自動削除
gh api --method PATCH "repos/${REPO}" --field "delete_branch_on_merge=true"
