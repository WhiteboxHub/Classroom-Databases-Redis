# Redis - Key-Value Cache Database

Redis is a source-available, in-memory storage, used as a distributed, in-memory key–value database, cache and message broker, with optional durability.

---

## 🚀 Getting Started

### Clone the Repository
```sh
git clone git@github.com:WhiteboxHub/classroom-databases-redis.git
cd classroom-databases-redis
```

### 🛠 Build and Run the Redis Container

1. **Build the Redis image**:
   ```sh
   docker build -t my-redis .
   ```
2. **Run the container**:
   ```sh
   docker run -d --name redis-classroom -p 6379:6379 my-redis
   ```
3. **Initialize data (if required)**:
   ```sh
   docker exec -it redis-classroom /data/init_data.sh
   ```

---

## 🔗 Install Redis CLI

Ensure that **Node.js** and **npm** are installed on your machine. Then, install the Redis CLI:

```sh
npm install -g redis-cli
```

---

## 💻 Using Redis CLI

### Start Redis CLI
```sh
redis-cli
```

### Common Commands

#### 📌 Retrieve Data
- **Get all subjects:**
  ```sh
  SMEMBERS subjects
  ```
- **Get details of a specific course:**
  ```sh
  HGETALL course:1
  ```
- **Get details of a student:**
  ```sh
  HGETALL student:101
  ```
- **Get courses a student is enrolled in:**
  ```sh
  SMEMBERS student:101:courses
  ```

#### ✏️ Modify Data
- **Add a new student:**
  ```sh
  HSET student:104 name "David" age "10" grade "5"
  ```
- **Enroll a student in a course:**
  ```sh
  SADD student:104:courses 3
  ```
- **Remove a student from a course:**
  ```sh
  SREM student:101:courses 3
  ```

---

## 📊 Using Redis GUI Clients

### 1️⃣ RedisInsight (GUI IDE)
- **Download:** [RedisInsight](https://redis.com/redis-enterprise/redis-insight/)
- **Setup:**
  - Connect to `localhost:6379`
  - Browse keys using RedisInsight’s interactive UI.

---

## 📚 Classroom Query Examples

| Query                        | Redis Command                 |
|------------------------------|-------------------------------|
| Get all subjects             | `SMEMBERS subjects`           |
| Get all courses              | `KEYS course:*`               |
| Get course details           | `HGETALL course:1`            |
| Get all students             | `KEYS student:*`              |
| Get a student’s enrolled courses | `SMEMBERS student:101:courses` |
| Add a new student            | `HSET student:104 name "David" age "10" grade "5"` |
| Enroll a student in a course | `SADD student:104:courses 3`  |
| Remove a student from a course | `SREM student:101:courses 3`  |

---

## License
This project is licensed under the MIT License.

## Contributors
- Whitebox Learning
