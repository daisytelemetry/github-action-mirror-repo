# github-action-mirror-repo

Required arguments:
- git_remote_url: str (full https url)
- git_username: str
- git_password: str
- git_push_all_refs: bool (default: true)
  - Push all remote refs, not only checked out

Optional arguments:
- git_remote_name: str (default: mirror)
- git_push_args: str (default: "--force --prune")
- debug: bool 
