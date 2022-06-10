#!/bin/bash
cd $(cd $(dirname $0) && pwd)
cd ../.git/hooks

echo -e "#!/bin/sh\npre-commit run --all-files" > pre-commit
chmod a+x pre-commit
