# Claude Note

Read and follow `AGENTS.md` first. It is the canonical repository contract.

If additional Claude-specific guidance is ever needed, keep it brief here and do not duplicate policy text already present in `AGENTS.md`.

#SUBAGENTS

you can use subagents for tasks, but collecting the full output of the run will cause contex poisoning, see
if you can query them to return you just the answer

#TASK MODELS
Choose the model (haiku, sonnet, opus) that is enough for the subtask. Criticism, writting and discussion tasks must use opus. File managemen, bibliography and other tasks 
can be good on sonnet that is the standard programming model, and you can consider that low risk tasks (never involving the file system as sandbox is not granted) can run haiku.
