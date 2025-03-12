export OPENAI_API_KEY=ollama
export OPENAI_API_BASE="http://172.31.203.162:8000/v1"

python token_benchmark_ray.py \
--model "Qwen/Qwen2-72B-Instruct" \
--mean-input-tokens 7000 \
--stddev-input-tokens 100 \
--mean-output-tokens 700 \
--stddev-output-tokens 10 \
--max-num-completed-requests 20000 \
--timeout 6000 \
--num-concurrent-requests 90 \
--results-dir "result_outputs" \
--llm-api openai \
--additional-sampling-params '{}'