## 🛠️ Dotfiles con chezmoi

Este repositorio contiene mi configuración personal (**dotfiles**) gestionada con [chezmoi](https://www.chezmoi.io/).  
Está preparado para funcionar en **Linux** y **Windows**, lo que me permite tener un entorno consistente en cualquier máquina.

---

## 🚀 Instalación rápida

Con un solo comando puedes clonar y aplicar mis dotfiles en una nueva máquina.

### Windows
```powershell
iwr -useb https://raw.githubusercontent.com/$env:GITHUB_USERNAME/dotfiles/main/bootstrap.ps1 | Invoke-Expression
```

### Linux / macOS
```bash
curl -fsSL https://raw.githubusercontent.com/$GITHUB_USERNAME/dotfiles/main/bootstrap.sh | bash
```

