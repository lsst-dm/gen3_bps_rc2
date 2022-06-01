NUMBER='22'
WEEKLY='2022_22'
TICKETNUM='34983'
DATETAG='2022-05-26T08:26'

DIR=w_${WEEKLY}
echo Copying to $DIR
mkdir -p $DIR
cp  weekly_template/* $DIR/
sed -i "s/NUMBER/${NUMBER}/g" $DIR/*
sed -i "s/WEEKLY/${WEEKLY}/g" $DIR/*
sed -i "s/TICKETNUM/${TICKETNUM}/g" $DIR/*

cd $DIR
mkdir -p metrics_dispatch
mv dispatch.sh make_json.sh metrics_dispatch/
sed -i "s/TICKETNUM/${TICKETNUM}/g" ./metrics_dispatch/*
sed -i "s/WEEKLY/${WEEKLY}/g" ./metrics_dispatch/*
sed -i "s/DATETAG/${DATETAG}/g" ./metrics_dispatch/*
