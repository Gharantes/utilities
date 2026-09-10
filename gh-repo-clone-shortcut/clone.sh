#!/usr/bin/env bash
set -euo pipefail

DIR="$HOME/Work/Devel/Repos/GitHub"

# owner/repo or a full URL - gh repo clone takes both.
REPOS=(
# ===== evogelabs
evogelabs/funcional-calculadora-tributaria
evogelabs/funcional-imunidadeexportacao
evogelabs/funcional-apoio
evogelabs/funcional-subvencao
evogelabs/funcional-conciliador
evogelabs/funcional-libs
evogelabs/funcional-portal-inteligencia
evogelabs/funcional-taskbot
evogelabs/funcional-gratus
evogelabs/inteliclin-backend-api-integracao
evogelabs/funcional-intranet
evogelabs/funcional-atlas
evogelabs/funcional-cnpj-importer
evogelabs/funcional-databricks-configs
evogelabs/funcional-sandbox
evogelabs/funcional-utils
evogelabs/funcional-scrapy-busca-ncm-econet
# ===== FuncionalEmpresarial
FuncionalEmpresarial/portal-dev
FuncionalEmpresarial/funcional-databricks
FuncionalEmpresarial/redmine
FuncionalEmpresarial/fsmart2
FuncionalEmpresarial/fsmart1
FuncionalEmpresarial/databricks-pipeline
# FuncionalEmpresarial/subvencao
# FuncionalEmpresarial/taskbot
# FuncionalEmpresarial/imunidadeexportacao
# FuncionalEmpresarial/gratus
# FuncionalEmpresarial/atlas
# FuncionalEmpresarial/conciliador
# FuncionalEmpresarial/apoio
# ===== Gharantes
Gharantes/repo-tests
)

PS3='Pick a repo: '
select repo in "${REPOS[@]}"; do
  [[ -n "${repo:-}" ]] || continue
  name="${repo##*/}"
  gh repo clone "$repo" "$DIR/${name%.git}"
  break
done
