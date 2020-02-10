import sys
import config
from github import Github

folderName = sys.argv[1]

g = Github(config.githubUserName, config.githubPassword)

user = g.get_user()
repo = user.create_repo(folderName)
print('Successfully Created {} Repository on Github'.format(folderName))
