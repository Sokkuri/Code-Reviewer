FROM github/super-linter:latest

ENV FILTER_REGEX_INCLUDE=.*\.(cs|css|scss|ts|js|yml|ps1|vue) \
    VALIDATE_ALL_CODEBASE=false \
    # Bypass GitHub checks
    RUN_LOCAL=true \
    # Disabled Linters
    VALIDATE_ARM=false \
    VALIDATE_BASH=false \
    VALIDATE_BASH_EXEC=false \
    VALIDATE_CLOJURE=false \
    VALIDATE_CLOUDFORMATION=false \
    VALIDATE_COFFEE=false \
    VALIDATE_DART=false \
    VALIDATE_ENV=false \
    VALIDATE_GO=false \
    VALIDATE_GROOVY=false \
    VALIDATE_JAVA=false \
    VALIDATE_JSX=false \
    VALIDATE_KOTLIN=false \
    VALIDATE_LATEX=false \
    VALIDATE_LUA=false \
    VALIDATE_MD=false \
    VALIDATE_PERL=false \
    VALIDATE_PHP=false \
    VALIDATE_PHP_BUILTIN=false \
    VALIDATE_PHP_PHPCS=false \
    VALIDATE_PHP_PHPSTAN=false \
    VALIDATE_PHP_PSALM=false \
    VALIDATE_PROTOBUF=false \
    VALIDATE_PYTHON=false \
    VALIDATE_PYTHON_PYLINT=false \
    VALIDATE_PYTHON_FLAKE8=false \
    VALIDATE_PYTHON_BLACK=false \
    VALIDATE_R=false \
    VALIDATE_RAKU=false \
    VALIDATE_RUBY=false \
    VALIDATE_SHELL_SHFMT=false \
    VALIDATE_SNAKEMAKE_LINT=false \
    VALIDATE_SNAKEMAKE_SNAKEFMT=false \
    VALIDATE_STATES=false \
    VALIDATE_SQL=false \
    VALIDATE_TERRAFORM=false \
    VALIDATE_TERRAFORM_TERRASCAN=false \
    VALIDATE_TSX=false \
    VALIDATE_XML=false \
    VALIDATE_JSON=false

COPY ./run.sh /reviewer/run.sh
COPY ./.editorconfig /reviewer/.editorconfig

RUN ["chmod", "+x","/reviewer/run.sh"]

ENTRYPOINT ["/reviewer/run.sh"]
