inotifywait -e modify -r -m -q --format '%f' $PGDATA/pg_log | while read FILE
do
  tail -n1 $PGDATA/pg_log/$FILE
done
