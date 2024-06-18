set dotenv-load := true

# --------------------------------------------------------------------------- #
# Build & Run
# --------------------------------------------------------------------------- #

# Roda o serviço em desenvolvimento
@start:
  echo "\n🚀 starting service..."
  echo "----------------------"
  docker compose build --no-cache
  docker compose up -d --force-recreate --remove-orphans

# Para o serviço
@teardown:
  echo "\n🛑 stopping service..."
  echo "----------------------"
  docker compose down -v

# Reinicia o serviço
@restart:
  echo "\n🔄 restarting service..."
  echo "------------------------"
  docker compose restart

# Cria novamente a aplicação do zero
@rebuild:
  echo "------------------------"
  echo "\n🔄 restarting service..."
  just teardown
  just start
