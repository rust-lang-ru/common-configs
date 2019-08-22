# Required env variables:
# SCRIPTS_DIR=`dirname "$0" | xargs realpath`
# ROOT_DIR=`realpath "${SCRIPTS_DIR}/../"`
# ORIGINAL_DIR="${ROOT_DIR}/async-book"
# ORIGINAL_LANG="en"
# ORIGINAL_REPO="https://github.com/rust-lang/async-book.git"
#
# TRANSLATION_LANG="ru"
# TRANSLATION_DIR="${ORIGINAL_DIR}-${TRANSLATION_LANG}"

pushd "${ROOT_DIR}"

git pull origin master
rm -rf "${ORIGINAL_DIR}"
git clone --depth=1 "${ORIGINAL_REPO}" "${ORIGINAL_DIR}"
rm -rf "${ORIGINAL_DIR}/.git"

git add -A "${ORIGINAL_DIR}"
git commit -m 'update original'
git push origin master

popd

#
