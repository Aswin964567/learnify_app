# Learnify Flutter App - README

## 📅 Project Overview
Learnify is a mobile application designed for NET Exam Preparation.
Built using Flutter, it provides structured quizzes, leaderboard, performance tracking, and a gamified learning experience.

## 🔧 Tech Stack
- Flutter
- Riverpod (State Management)
- Dio (API calls)
- Node.js + Express (Backend)
- MongoDB or MySQL (Database)

## 📂 Project Structure
```bash
lib/
 ├── core/
 │    ├── constants/
 │    ├── network/
 │    ├── router/
 │    └── theme/
 ├── features/
 │    ├── auth/
 │    ├── home/
 │    └── module/
 ├── providers/
 ├── presentation/
 └── main.dart
```

- `core/` → App-wide resources like router, theme, network clients.
- `features/` → Each feature like auth, home, modules in a separate folder.
- `providers/` → App-wide Riverpod providers.

## 🛠️ Development Rules
- Follow the feature-first folder structure.
- **All API calls must be handled in service classes inside `data/services/`.**
- **No direct API calls inside UI (Widget) files.**
- Use **Riverpod** for state management (AsyncNotifier, FutureProvider, etc).
- Always handle loading, success, and error states properly.
- Use reusable components (widgets, extensions) whenever possible.

## 📝 Git Workflow

### 1. Branch Naming
- Always create a feature or bugfix branch.
- Naming convention:
  - `feature/login-ui`
  - `feature/module-api`
  - `bugfix/home-screen-error`

### 2. Committing Code
- Follow this commit format:
  - `feat(auth): add login ui`
  - `fix(module): fix crash when loading`
  - `refactor(home): update home screen layout`

### 3. Pull Request (PR) Process
- After completing the task:
  1. Push your branch to remote.
  2. Create a **Pull Request** into the `dev` branch.
  3. Fill the PR template.
  4. Request review from the team lead.
- Wait for PR approval before merging.
- Do not merge without approval.

### 4. Pulling Latest Changes
- Always pull the latest `dev` branch before starting new work.
- Fix any conflicts if they appear.

### 5. PR Checklist
Every Pull Request must:
- [ ] Follow folder structure
- [ ] Use Riverpod properly
- [ ] API calls handled with Dio
- [ ] Error handling is present
- [ ] Code is formatted (`dart format .`)

## 📖 Useful Commands
```bash
# Run project
flutter pub get
flutter run

# Format code
dart format .

# Analyze issues
flutter analyze
```

## 🔹 Responsibilities
- **Developers:**
  - Complete assigned Jira tasks.
  - Create feature branches.
  - Follow commit and PR guidelines.
  - Fix PR review comments themselves.

- **Project Manager (Lead):**
  - Review PRs.
  - Merge only clean PRs into `dev`.
  - Handle final QA and deployment.


---

# ✨ Let's build Learnify professionally and efficiently! 🚀
