local util = require("lspconfig")

return {
  cmd = { "jdtls"},
  root_dir = util.root_pattern(".git", "mvnw", "gradlew", "pom.xml", "build.gradle"),
}
