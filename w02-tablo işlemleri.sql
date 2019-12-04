--Mevcut bir tabloya yeni bir geometry alanı eklememizi sağlar.
--AddGeometryColumn metodunun  daha detaylı bilgi için https://postgis.net/docs/AddGeometryColumn.html adresine bakınız.
SELECT AddGeometryColumn ('shema_adi','tablo_adi','geom_alaniadi',3857,'MULTIPOLYGON',2);

--Mevcut bir tablodan mevcut bir geometry alanı silmemizi sağlar.
--https://postgis.net/docs/DropGeometryColumn.html
SELECT DropGeometryColumn ('shema_adi','tablo_adi','geometri_alan_adi');
--veya
ALTER TABLE shema_adi.tablo_adi DROP column geometri_alan_adi;

--Tablodaki geometri alanının Spatial Reference ID'sini bulma 
 SELECT Find_SRID('shema_adi', 'tablo_adi', 'geometri_alan_adi');
 
 
 
 


