type FilePath = String
type Task     = (Bool, String)
type TaskList = [Task]

readTasks :: IO TaskList
writeTasks :: TaskList -> IO ()

