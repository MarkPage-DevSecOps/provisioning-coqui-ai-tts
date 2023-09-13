## 9 token: "Hi, guys! Nice to meet you!" 

### No scale (1 task)

| user | Respone time | Request Per Second | Time test |
| :--: | :----------: | :----------------: | --------- |
| 1 | 2,5s | 0.5s | 5m |
| 2 | 3,5s | 0.6s | 5m |
| 3 | 5,5s | 0,6s | 5m |
| 4 | 7s   | 0,5s | 5m -> run 1m -> crash |

### Scale -> 1 task ->

| user | Respone time | Request Per Second | Time test |
| :--: | :----------: | :----------------: | --------- |
| 1 | 2,5s | 0.5s | 5m |
| 2 | 4s | 0.6s | 5m |
| 3 | 6s | 0,6s | 5m -> run 2m **(alarm)** |

### Scale -> 2 task ->
| user | Respone time | Request Per Second | Time test |
| :--: | :----------: | :----------------: | --------- |
| 3 | 5,5s | 0,6s | 5m |
| 4 | 7,5s | 0,4s | 5m |
| 5 | 10s  | 0,6s | 5m |
| 7 | 12s  | 0,7s | 5m -> run 2m -> crash |