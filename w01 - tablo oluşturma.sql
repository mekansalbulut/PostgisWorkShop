CREATE TABLE shema_adi.tablo_adi
(
    "id"  serial not null,
    geom geometry(MultiPolygon,3857),  
    name character varying(95) COLLATE pg_catalog."default",
    CONSTRAINT pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)

--Oluşturulan tabloya kullanıcı sahiplendirme yetkilendirme
ALTER TABLE shema_adi.tablo_adi
    OWNER to sahip_kullanici;


--Oluşturulan Tablomuza gist indexi veriyoruz
--gist indexi tabloda daha performanslı sorgulamalar yapmamıza olanak sağlar.
--index adi kısmına eşsiz bir isim vermemiz sonunda gerekir.
--index adinin son kelimesine  geox gibi sabit bir değer vermemiz daha sonradan indexlerin işlevini anlamamız açısından yardımcı olacaktır.
CREATE INDEX index_adi_geox
    ON shema_adi.tablo_adi USING gist
    (geom)
    TABLESPACE pg_default;

