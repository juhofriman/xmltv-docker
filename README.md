[![Codefresh build status]( https://g.codefresh.io/api/badges/build?repoOwner=wallashop&repoName=xmltv-docker&branch=master&pipelineName=xmltv-docker&accountName=wallashop_github&type=cf-1)]( https://g.codefresh.io/repositories/wallashop/xmltv-docker/builds?filter=trigger:build;branch:master;service:58a8cfa87583f50100760a65~xmltv-docker)

<a href="https://g.codefresh.io/api/badges/build?repoOwner=srz-zumix&repoName=iutest&branch=master&pipelineName=iutest&accountName=srz-zumix&type=cf-1">
<img alt="Codefresh build status" src="https://g.codefresh.io/repositories/srz-zumix/iutest/builds?filter=trigger:build;branch:master;service:58a933be9d1bd40100495882~iutest">
</a>

#NOTV

Dockerized XMLTV. Instead of model, where docker container updates its ows state (i.e. running cron or something like that), I wanted to allow host have total control of how xmltv is actually used.

## Basic usage

```bash
# Start container (note /data for sharing with other containers)
docker run -v /data --name xmltv -d juhofriman/xmltv

# Execute configuration inside container
docker exec -it xmltv sh -c 'echo "all" |tv_grab_fi_sv --configure'

# Scrape the data
docker exec -it xmltv sh -c 'tv_grab_fi_sv --days 3 > /data/tvdata.xml'

# Link with other container or just do whatever with it
docker exec -it xmltv sh -c 'tail /data/tvdata.xml'
    <desc lang="sv">(Feh?r isten/White God, Ungern 2014) Korn?l Mundrucz?s drama om en v?rld d?r m?nniskor ?verger sina hundar. Unga Lilis hund Hagen kastas ut p? gatan, och Hagen kommer att leda hundarnas revolt. S: Zs?fia Psotta. HD</desc>
    <category>Film</category>
    <url>/1-2534614</url>
  </programme>
  <programme start="20160921234140 +0300" channel="teema.yle.fi">
    <title lang="sv">Simma lugnt, Larry!</title>
    <desc lang="sv">S?song 3, 7/10. Hunden, som Susie har skaffat, g?r att allergin tvingar Jeff att fly till ett hotell. Samtidigt vill familjen Braudy ha en hund och Larry f?rs?ker hitta en l?sning som ?r bra f?r alla parter. bildformat 4:3</desc>
    <url>/1-2773547</url>
  </programme>
</tv>
```
