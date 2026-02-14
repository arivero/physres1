# Claude Note

Read and follow `AGENTS.md` first. It is the canonical repository contract.

If additional Claude-specific guidance is ever needed, keep it brief here and do not duplicate policy text already present in `AGENTS.md`.

#SUBAGENTS

you can use subagents for tasks, but collecting the full output of the run will cause contex poisoning, see
if you can query them to return you just the answer

#TASK MODELS
Choose the model (haiku, sonnet, opus) that is enough for the subtask. Criticism, writting and discussion tasks must use opus. File managemen, bibliography and other tasks
can be good on sonnet that is the standard programming model, and you can consider that low risk tasks (never involving the file system as sandbox is not granted) can run haiku.

#CONTINUOUS WORK LOOP
When the user sets a work deadline (e.g., "work until 20:00"), you MUST continue working continuously until that deadline without stopping for summaries or waiting for user input. After completing a task or commit:
1. Immediately pick the next productive task from cycles/index.md or docs/next-articles.md
2. Continue the discovery → study → content loop without pausing
3. Do NOT write session summaries or stop to ask "what next?" unless you have run out of obvious next steps
4. Only stop when: (a) the deadline is reached, (b) you run out of context, or (c) there is truly no more productive work to do
5. Commit work periodically (respecting the 60-minute minimum between commits) but keep working between commits

The goal is continuous productivity during the allocated time window, not task-by-task interaction.
