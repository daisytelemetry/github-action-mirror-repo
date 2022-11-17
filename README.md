# github-action-mirror-repo

Required arguments:
- git_remote_url: str (full https url)
- git_username: str
- git_password: str

Optional arguments:
- git_remote_name: str (default: mirror)
- git_push_args: str (default: "--tags --force --prune")
- debug: bool 
