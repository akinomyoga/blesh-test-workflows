# -*- mode: sh; mode: sh-bash -*-

echo "$BASH_VERSION"

if [[ $OSTYPE == msys* ]]; then
  echo '== msys-2.0.dll =='
  ls -la /bin/msys-2.0.dll
  powershell -Command '(Get-Item "'$(/bin/cygpath -w /bin/msys-2.0.dll)'").VersionInfo.FileVersion'
  echo
fi

LC_ALL=en_US.UTF-8

s=$'\U1F1E6'
echo "length: ${#s}"
for ((i = 0; i < ${#s}; i++)); do
  echo -n "char #$i:"
  printf '%s' "${s:i:1}" | od -A n -t x1
done
