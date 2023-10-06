PGDMP                         {            postgres    15.4    15.4 Y    `           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            a           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            b           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            c           1262    5    postgres    DATABASE     |   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE postgres;
                postgres    false            d           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3427            	            2615    16401 	   ScClients    SCHEMA        CREATE SCHEMA "ScClients";
    DROP SCHEMA "ScClients";
                postgres    false                        2615    16400 	   ScEntries    SCHEMA        CREATE SCHEMA "ScEntries";
    DROP SCHEMA "ScEntries";
                postgres    false                        2615    16399    ScOrders    SCHEMA        CREATE SCHEMA "ScOrders";
    DROP SCHEMA "ScOrders";
                postgres    false                        2615    16398 
   ScProducts    SCHEMA        CREATE SCHEMA "ScProducts";
    DROP SCHEMA "ScProducts";
                postgres    false                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            e           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16444    Clients    TABLE     �   CREATE TABLE "ScClients"."Clients" (
    "ClientId" bigint NOT NULL,
    "Ci" character varying(15),
    "FullName" character varying(40),
    "Phone" character varying(11),
    "Address" character varying(50)
);
 "   DROP TABLE "ScClients"."Clients";
    	   ScClients         heap    postgres    false    9            �            1259    16443    Clients_ClientId_seq    SEQUENCE     �   CREATE SEQUENCE "ScClients"."Clients_ClientId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE "ScClients"."Clients_ClientId_seq";
    	   ScClients          postgres    false    9    219            f           0    0    Clients_ClientId_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "ScClients"."Clients_ClientId_seq" OWNED BY "ScClients"."Clients"."ClientId";
       	   ScClients          postgres    false    218            �            1259    16485    DetailEntries    TABLE     �   CREATE TABLE "ScEntries"."DetailEntries" (
    "DetailEntryId" bigint NOT NULL,
    "EntryFk" bigint,
    "ProductFk" bigint,
    "Quantity" integer
);
 (   DROP TABLE "ScEntries"."DetailEntries";
    	   ScEntries         heap    postgres    false    8            �            1259    16484    DetailEntries_DetailEntryId_seq    SEQUENCE     �   CREATE SEQUENCE "ScEntries"."DetailEntries_DetailEntryId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE "ScEntries"."DetailEntries_DetailEntryId_seq";
    	   ScEntries          postgres    false    227    8            g           0    0    DetailEntries_DetailEntryId_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE "ScEntries"."DetailEntries_DetailEntryId_seq" OWNED BY "ScEntries"."DetailEntries"."DetailEntryId";
       	   ScEntries          postgres    false    226            �            1259    16477    Entries    TABLE     W   CREATE TABLE "ScEntries"."Entries" (
    "EntryId" bigint NOT NULL,
    "Date" date
);
 "   DROP TABLE "ScEntries"."Entries";
    	   ScEntries         heap    postgres    false    8            �            1259    16476    Entries_EntryId_seq    SEQUENCE     �   CREATE SEQUENCE "ScEntries"."Entries_EntryId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE "ScEntries"."Entries_EntryId_seq";
    	   ScEntries          postgres    false    225    8            h           0    0    Entries_EntryId_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE "ScEntries"."Entries_EntryId_seq" OWNED BY "ScEntries"."Entries"."EntryId";
       	   ScEntries          postgres    false    224            �            1259    16593    DetailOrders    TABLE     �   CREATE TABLE "ScOrders"."DetailOrders" (
    "DetailOrderId" bigint NOT NULL,
    "OrderFk" bigint,
    "ProductFk" bigint,
    "Quantity" integer,
    "Amount" integer
);
 &   DROP TABLE "ScOrders"."DetailOrders";
       ScOrders         heap    postgres    false    7            �            1259    16592    DetailOrders_DetailOrderId_seq    SEQUENCE     �   CREATE SEQUENCE "ScOrders"."DetailOrders_DetailOrderId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE "ScOrders"."DetailOrders_DetailOrderId_seq";
       ScOrders          postgres    false    235    7            i           0    0    DetailOrders_DetailOrderId_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE "ScOrders"."DetailOrders_DetailOrderId_seq" OWNED BY "ScOrders"."DetailOrders"."DetailOrderId";
          ScOrders          postgres    false    234            �            1259    16511    Orders    TABLE     �   CREATE TABLE "ScOrders"."Orders" (
    "OrderId" bigint NOT NULL,
    "ClientFk" bigint,
    "TotalAmount" integer,
    "PaidAmount" integer,
    "StatusOrderFk" smallint,
    "PaymentMethodFk" smallint
);
     DROP TABLE "ScOrders"."Orders";
       ScOrders         heap    postgres    false    7            �            1259    16510    Orders_OrderId_seq    SEQUENCE     �   CREATE SEQUENCE "ScOrders"."Orders_OrderId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE "ScOrders"."Orders_OrderId_seq";
       ScOrders          postgres    false    231    7            j           0    0    Orders_OrderId_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE "ScOrders"."Orders_OrderId_seq" OWNED BY "ScOrders"."Orders"."OrderId";
          ScOrders          postgres    false    230            �            1259    16550    PaymentMethods    TABLE        CREATE TABLE "ScOrders"."PaymentMethods" (
    "PaymentMethodId" smallint NOT NULL,
    "Description" character varying(15)
);
 (   DROP TABLE "ScOrders"."PaymentMethods";
       ScOrders         heap    postgres    false    7            �            1259    16549 "   PaymentMethods_PaymentMethodId_seq    SEQUENCE     �   CREATE SEQUENCE "ScOrders"."PaymentMethods_PaymentMethodId_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE "ScOrders"."PaymentMethods_PaymentMethodId_seq";
       ScOrders          postgres    false    7    233            k           0    0 "   PaymentMethods_PaymentMethodId_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE "ScOrders"."PaymentMethods_PaymentMethodId_seq" OWNED BY "ScOrders"."PaymentMethods"."PaymentMethodId";
          ScOrders          postgres    false    232            �            1259    16502    StatusOrders    TABLE     {   CREATE TABLE "ScOrders"."StatusOrders" (
    "StatusOrderId" smallint NOT NULL,
    "Description" character varying(15)
);
 &   DROP TABLE "ScOrders"."StatusOrders";
       ScOrders         heap    postgres    false    7            �            1259    16501    StatusOrders_StatusOrderId_seq    SEQUENCE     �   CREATE SEQUENCE "ScOrders"."StatusOrders_StatusOrderId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE "ScOrders"."StatusOrders_StatusOrderId_seq";
       ScOrders          postgres    false    229    7            l           0    0    StatusOrders_StatusOrderId_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE "ScOrders"."StatusOrders_StatusOrderId_seq" OWNED BY "ScOrders"."StatusOrders"."StatusOrderId";
          ScOrders          postgres    false    228            �            1259    16610    Keeps    TABLE     m   CREATE TABLE "ScProducts"."Keeps" (
    "KeepId" bigint NOT NULL,
    "Description" character varying(20)
);
 !   DROP TABLE "ScProducts"."Keeps";
    
   ScProducts         heap    postgres    false    6            �            1259    16609    Keeps_KeepId_seq    SEQUENCE     �   CREATE SEQUENCE "ScProducts"."Keeps_KeepId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE "ScProducts"."Keeps_KeepId_seq";
    
   ScProducts          postgres    false    237    6            m           0    0    Keeps_KeepId_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE "ScProducts"."Keeps_KeepId_seq" OWNED BY "ScProducts"."Keeps"."KeepId";
       
   ScProducts          postgres    false    236            �            1259    16458    Measurements    TABLE     �   CREATE TABLE "ScProducts"."Measurements" (
    "MeasurementId" smallint NOT NULL,
    "Description" character varying(10),
    "ShortDescription" character varying(5)
);
 (   DROP TABLE "ScProducts"."Measurements";
    
   ScProducts         heap    postgres    false    6            �            1259    16457    Measurements_MeasurementId_seq    SEQUENCE     �   CREATE SEQUENCE "ScProducts"."Measurements_MeasurementId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE "ScProducts"."Measurements_MeasurementId_seq";
    
   ScProducts          postgres    false    6    221            n           0    0    Measurements_MeasurementId_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE "ScProducts"."Measurements_MeasurementId_seq" OWNED BY "ScProducts"."Measurements"."MeasurementId";
       
   ScProducts          postgres    false    220            �            1259    16465    Products    TABLE     �   CREATE TABLE "ScProducts"."Products" (
    "ProductId" bigint NOT NULL,
    "Description" character varying(15),
    "Image" character varying(15),
    "MeasurementFk" smallint,
    "Quantity" integer,
    "Price" integer,
    "Cost" integer
);
 $   DROP TABLE "ScProducts"."Products";
    
   ScProducts         heap    postgres    false    6            �            1259    16464    Products_ProductId_seq    SEQUENCE     �   CREATE SEQUENCE "ScProducts"."Products_ProductId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE "ScProducts"."Products_ProductId_seq";
    
   ScProducts          postgres    false    6    223            o           0    0    Products_ProductId_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE "ScProducts"."Products_ProductId_seq" OWNED BY "ScProducts"."Products"."ProductId";
       
   ScProducts          postgres    false    222            �           2604    16447    Clients ClientId    DEFAULT     �   ALTER TABLE ONLY "ScClients"."Clients" ALTER COLUMN "ClientId" SET DEFAULT nextval('"ScClients"."Clients_ClientId_seq"'::regclass);
 H   ALTER TABLE "ScClients"."Clients" ALTER COLUMN "ClientId" DROP DEFAULT;
    	   ScClients          postgres    false    218    219    219            �           2604    16488    DetailEntries DetailEntryId    DEFAULT     �   ALTER TABLE ONLY "ScEntries"."DetailEntries" ALTER COLUMN "DetailEntryId" SET DEFAULT nextval('"ScEntries"."DetailEntries_DetailEntryId_seq"'::regclass);
 S   ALTER TABLE "ScEntries"."DetailEntries" ALTER COLUMN "DetailEntryId" DROP DEFAULT;
    	   ScEntries          postgres    false    227    226    227            �           2604    16480    Entries EntryId    DEFAULT     �   ALTER TABLE ONLY "ScEntries"."Entries" ALTER COLUMN "EntryId" SET DEFAULT nextval('"ScEntries"."Entries_EntryId_seq"'::regclass);
 G   ALTER TABLE "ScEntries"."Entries" ALTER COLUMN "EntryId" DROP DEFAULT;
    	   ScEntries          postgres    false    224    225    225            �           2604    16596    DetailOrders DetailOrderId    DEFAULT     �   ALTER TABLE ONLY "ScOrders"."DetailOrders" ALTER COLUMN "DetailOrderId" SET DEFAULT nextval('"ScOrders"."DetailOrders_DetailOrderId_seq"'::regclass);
 Q   ALTER TABLE "ScOrders"."DetailOrders" ALTER COLUMN "DetailOrderId" DROP DEFAULT;
       ScOrders          postgres    false    234    235    235            �           2604    16514    Orders OrderId    DEFAULT     ~   ALTER TABLE ONLY "ScOrders"."Orders" ALTER COLUMN "OrderId" SET DEFAULT nextval('"ScOrders"."Orders_OrderId_seq"'::regclass);
 E   ALTER TABLE "ScOrders"."Orders" ALTER COLUMN "OrderId" DROP DEFAULT;
       ScOrders          postgres    false    230    231    231            �           2604    16553    PaymentMethods PaymentMethodId    DEFAULT     �   ALTER TABLE ONLY "ScOrders"."PaymentMethods" ALTER COLUMN "PaymentMethodId" SET DEFAULT nextval('"ScOrders"."PaymentMethods_PaymentMethodId_seq"'::regclass);
 U   ALTER TABLE "ScOrders"."PaymentMethods" ALTER COLUMN "PaymentMethodId" DROP DEFAULT;
       ScOrders          postgres    false    232    233    233            �           2604    16528    StatusOrders StatusOrderId    DEFAULT     �   ALTER TABLE ONLY "ScOrders"."StatusOrders" ALTER COLUMN "StatusOrderId" SET DEFAULT nextval('"ScOrders"."StatusOrders_StatusOrderId_seq"'::regclass);
 Q   ALTER TABLE "ScOrders"."StatusOrders" ALTER COLUMN "StatusOrderId" DROP DEFAULT;
       ScOrders          postgres    false    229    228    229            �           2604    16613    Keeps KeepId    DEFAULT     ~   ALTER TABLE ONLY "ScProducts"."Keeps" ALTER COLUMN "KeepId" SET DEFAULT nextval('"ScProducts"."Keeps_KeepId_seq"'::regclass);
 E   ALTER TABLE "ScProducts"."Keeps" ALTER COLUMN "KeepId" DROP DEFAULT;
    
   ScProducts          postgres    false    236    237    237            �           2604    16571    Measurements MeasurementId    DEFAULT     �   ALTER TABLE ONLY "ScProducts"."Measurements" ALTER COLUMN "MeasurementId" SET DEFAULT nextval('"ScProducts"."Measurements_MeasurementId_seq"'::regclass);
 S   ALTER TABLE "ScProducts"."Measurements" ALTER COLUMN "MeasurementId" DROP DEFAULT;
    
   ScProducts          postgres    false    220    221    221            �           2604    16468    Products ProductId    DEFAULT     �   ALTER TABLE ONLY "ScProducts"."Products" ALTER COLUMN "ProductId" SET DEFAULT nextval('"ScProducts"."Products_ProductId_seq"'::regclass);
 K   ALTER TABLE "ScProducts"."Products" ALTER COLUMN "ProductId" DROP DEFAULT;
    
   ScProducts          postgres    false    222    223    223            K          0    16444    Clients 
   TABLE DATA           Z   COPY "ScClients"."Clients" ("ClientId", "Ci", "FullName", "Phone", "Address") FROM stdin;
 	   ScClients          postgres    false    219   Mk       S          0    16485    DetailEntries 
   TABLE DATA           c   COPY "ScEntries"."DetailEntries" ("DetailEntryId", "EntryFk", "ProductFk", "Quantity") FROM stdin;
 	   ScEntries          postgres    false    227   jk       Q          0    16477    Entries 
   TABLE DATA           ;   COPY "ScEntries"."Entries" ("EntryId", "Date") FROM stdin;
 	   ScEntries          postgres    false    225   �k       [          0    16593    DetailOrders 
   TABLE DATA           k   COPY "ScOrders"."DetailOrders" ("DetailOrderId", "OrderFk", "ProductFk", "Quantity", "Amount") FROM stdin;
    ScOrders          postgres    false    235   �k       W          0    16511    Orders 
   TABLE DATA           ~   COPY "ScOrders"."Orders" ("OrderId", "ClientFk", "TotalAmount", "PaidAmount", "StatusOrderFk", "PaymentMethodFk") FROM stdin;
    ScOrders          postgres    false    231   �k       Y          0    16550    PaymentMethods 
   TABLE DATA           P   COPY "ScOrders"."PaymentMethods" ("PaymentMethodId", "Description") FROM stdin;
    ScOrders          postgres    false    233   �k       U          0    16502    StatusOrders 
   TABLE DATA           L   COPY "ScOrders"."StatusOrders" ("StatusOrderId", "Description") FROM stdin;
    ScOrders          postgres    false    229   �k       ]          0    16610    Keeps 
   TABLE DATA           @   COPY "ScProducts"."Keeps" ("KeepId", "Description") FROM stdin;
 
   ScProducts          postgres    false    237   l       M          0    16458    Measurements 
   TABLE DATA           b   COPY "ScProducts"."Measurements" ("MeasurementId", "Description", "ShortDescription") FROM stdin;
 
   ScProducts          postgres    false    221   5l       O          0    16465    Products 
   TABLE DATA           }   COPY "ScProducts"."Products" ("ProductId", "Description", "Image", "MeasurementFk", "Quantity", "Price", "Cost") FROM stdin;
 
   ScProducts          postgres    false    223   Rl       p           0    0    Clients_ClientId_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('"ScClients"."Clients_ClientId_seq"', 1, false);
       	   ScClients          postgres    false    218            q           0    0    DetailEntries_DetailEntryId_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('"ScEntries"."DetailEntries_DetailEntryId_seq"', 1, false);
       	   ScEntries          postgres    false    226            r           0    0    Entries_EntryId_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('"ScEntries"."Entries_EntryId_seq"', 1, false);
       	   ScEntries          postgres    false    224            s           0    0    DetailOrders_DetailOrderId_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('"ScOrders"."DetailOrders_DetailOrderId_seq"', 1, false);
          ScOrders          postgres    false    234            t           0    0    Orders_OrderId_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('"ScOrders"."Orders_OrderId_seq"', 1, false);
          ScOrders          postgres    false    230            u           0    0 "   PaymentMethods_PaymentMethodId_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('"ScOrders"."PaymentMethods_PaymentMethodId_seq"', 1, false);
          ScOrders          postgres    false    232            v           0    0    StatusOrders_StatusOrderId_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('"ScOrders"."StatusOrders_StatusOrderId_seq"', 1, false);
          ScOrders          postgres    false    228            w           0    0    Keeps_KeepId_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('"ScProducts"."Keeps_KeepId_seq"', 1, false);
       
   ScProducts          postgres    false    236            x           0    0    Measurements_MeasurementId_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('"ScProducts"."Measurements_MeasurementId_seq"', 1, false);
       
   ScProducts          postgres    false    220            y           0    0    Products_ProductId_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('"ScProducts"."Products_ProductId_seq"', 1, false);
       
   ScProducts          postgres    false    222            �           2606    16449    Clients ClientPrimaryKey 
   CONSTRAINT     g   ALTER TABLE ONLY "ScClients"."Clients"
    ADD CONSTRAINT "ClientPrimaryKey" PRIMARY KEY ("ClientId");
 K   ALTER TABLE ONLY "ScClients"."Clients" DROP CONSTRAINT "ClientPrimaryKey";
    	   ScClients            postgres    false    219            �           2606    16490 #   DetailEntries DetailEntryPrimaryKey 
   CONSTRAINT     w   ALTER TABLE ONLY "ScEntries"."DetailEntries"
    ADD CONSTRAINT "DetailEntryPrimaryKey" PRIMARY KEY ("DetailEntryId");
 V   ALTER TABLE ONLY "ScEntries"."DetailEntries" DROP CONSTRAINT "DetailEntryPrimaryKey";
    	   ScEntries            postgres    false    227            �           2606    16482    Entries EntryPrimaryKey 
   CONSTRAINT     e   ALTER TABLE ONLY "ScEntries"."Entries"
    ADD CONSTRAINT "EntryPrimaryKey" PRIMARY KEY ("EntryId");
 J   ALTER TABLE ONLY "ScEntries"."Entries" DROP CONSTRAINT "EntryPrimaryKey";
    	   ScEntries            postgres    false    225            �           2606    16598 "   DetailOrders DetailOrderPrimaryKey 
   CONSTRAINT     u   ALTER TABLE ONLY "ScOrders"."DetailOrders"
    ADD CONSTRAINT "DetailOrderPrimaryKey" PRIMARY KEY ("DetailOrderId");
 T   ALTER TABLE ONLY "ScOrders"."DetailOrders" DROP CONSTRAINT "DetailOrderPrimaryKey";
       ScOrders            postgres    false    235            �           2606    16516    Orders OrderPrimaryKey 
   CONSTRAINT     c   ALTER TABLE ONLY "ScOrders"."Orders"
    ADD CONSTRAINT "OrderPrimaryKey" PRIMARY KEY ("OrderId");
 H   ALTER TABLE ONLY "ScOrders"."Orders" DROP CONSTRAINT "OrderPrimaryKey";
       ScOrders            postgres    false    231            �           2606    16555 &   PaymentMethods PaymentMethodPrimaryKey 
   CONSTRAINT     {   ALTER TABLE ONLY "ScOrders"."PaymentMethods"
    ADD CONSTRAINT "PaymentMethodPrimaryKey" PRIMARY KEY ("PaymentMethodId");
 X   ALTER TABLE ONLY "ScOrders"."PaymentMethods" DROP CONSTRAINT "PaymentMethodPrimaryKey";
       ScOrders            postgres    false    233            �           2606    16530 "   StatusOrders StatusOrderPrimaryKey 
   CONSTRAINT     u   ALTER TABLE ONLY "ScOrders"."StatusOrders"
    ADD CONSTRAINT "StatusOrderPrimaryKey" PRIMARY KEY ("StatusOrderId");
 T   ALTER TABLE ONLY "ScOrders"."StatusOrders" DROP CONSTRAINT "StatusOrderPrimaryKey";
       ScOrders            postgres    false    229            �           2606    16615    Keeps Keeps_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY "ScProducts"."Keeps"
    ADD CONSTRAINT "Keeps_pkey" PRIMARY KEY ("KeepId");
 D   ALTER TABLE ONLY "ScProducts"."Keeps" DROP CONSTRAINT "Keeps_pkey";
    
   ScProducts            postgres    false    237            �           2606    16573 "   Measurements MeasurementPrimaryKey 
   CONSTRAINT     w   ALTER TABLE ONLY "ScProducts"."Measurements"
    ADD CONSTRAINT "MeasurementPrimaryKey" PRIMARY KEY ("MeasurementId");
 V   ALTER TABLE ONLY "ScProducts"."Measurements" DROP CONSTRAINT "MeasurementPrimaryKey";
    
   ScProducts            postgres    false    221            �           2606    16470    Products ProductPrimaryKey 
   CONSTRAINT     k   ALTER TABLE ONLY "ScProducts"."Products"
    ADD CONSTRAINT "ProductPrimaryKey" PRIMARY KEY ("ProductId");
 N   ALTER TABLE ONLY "ScProducts"."Products" DROP CONSTRAINT "ProductPrimaryKey";
    
   ScProducts            postgres    false    223            �           2606    16491    DetailEntries EntryForeignKey    FK CONSTRAINT     �   ALTER TABLE ONLY "ScEntries"."DetailEntries"
    ADD CONSTRAINT "EntryForeignKey" FOREIGN KEY ("EntryFk") REFERENCES "ScEntries"."Entries"("EntryId");
 P   ALTER TABLE ONLY "ScEntries"."DetailEntries" DROP CONSTRAINT "EntryForeignKey";
    	   ScEntries          postgres    false    3239    225    227            �           2606    16496    DetailEntries ProductForeignKey    FK CONSTRAINT     �   ALTER TABLE ONLY "ScEntries"."DetailEntries"
    ADD CONSTRAINT "ProductForeignKey" FOREIGN KEY ("ProductFk") REFERENCES "ScProducts"."Products"("ProductId");
 R   ALTER TABLE ONLY "ScEntries"."DetailEntries" DROP CONSTRAINT "ProductForeignKey";
    	   ScEntries          postgres    false    223    3237    227            �           2606    16556    Orders ClientForeignKey    FK CONSTRAINT     �   ALTER TABLE ONLY "ScOrders"."Orders"
    ADD CONSTRAINT "ClientForeignKey" FOREIGN KEY ("ClientFk") REFERENCES "ScClients"."Clients"("ClientId") NOT VALID;
 I   ALTER TABLE ONLY "ScOrders"."Orders" DROP CONSTRAINT "ClientForeignKey";
       ScOrders          postgres    false    231    219    3233            �           2606    16599    DetailOrders OrderForeignKey    FK CONSTRAINT     �   ALTER TABLE ONLY "ScOrders"."DetailOrders"
    ADD CONSTRAINT "OrderForeignKey" FOREIGN KEY ("OrderFk") REFERENCES "ScOrders"."Orders"("OrderId");
 N   ALTER TABLE ONLY "ScOrders"."DetailOrders" DROP CONSTRAINT "OrderForeignKey";
       ScOrders          postgres    false    235    231    3245            �           2606    16566    Orders PaymentMethodForeignKey    FK CONSTRAINT     �   ALTER TABLE ONLY "ScOrders"."Orders"
    ADD CONSTRAINT "PaymentMethodForeignKey" FOREIGN KEY ("PaymentMethodFk") REFERENCES "ScOrders"."PaymentMethods"("PaymentMethodId") NOT VALID;
 P   ALTER TABLE ONLY "ScOrders"."Orders" DROP CONSTRAINT "PaymentMethodForeignKey";
       ScOrders          postgres    false    231    233    3247            �           2606    16604    DetailOrders ProductForeignKey    FK CONSTRAINT     �   ALTER TABLE ONLY "ScOrders"."DetailOrders"
    ADD CONSTRAINT "ProductForeignKey" FOREIGN KEY ("ProductFk") REFERENCES "ScProducts"."Products"("ProductId");
 P   ALTER TABLE ONLY "ScOrders"."DetailOrders" DROP CONSTRAINT "ProductForeignKey";
       ScOrders          postgres    false    3237    223    235            �           2606    16561    Orders StatusOrderForeignKey    FK CONSTRAINT     �   ALTER TABLE ONLY "ScOrders"."Orders"
    ADD CONSTRAINT "StatusOrderForeignKey" FOREIGN KEY ("StatusOrderFk") REFERENCES "ScOrders"."StatusOrders"("StatusOrderId") NOT VALID;
 N   ALTER TABLE ONLY "ScOrders"."Orders" DROP CONSTRAINT "StatusOrderForeignKey";
       ScOrders          postgres    false    229    231    3243            �           2606    16583    Products MeasurementForeignKey    FK CONSTRAINT     �   ALTER TABLE ONLY "ScProducts"."Products"
    ADD CONSTRAINT "MeasurementForeignKey" FOREIGN KEY ("MeasurementFk") REFERENCES "ScProducts"."Measurements"("MeasurementId");
 R   ALTER TABLE ONLY "ScProducts"."Products" DROP CONSTRAINT "MeasurementForeignKey";
    
   ScProducts          postgres    false    221    3235    223            K      x������ � �      S      x������ � �      Q      x������ � �      [      x������ � �      W      x������ � �      Y      x������ � �      U      x������ � �      ]      x������ � �      M      x������ � �      O      x������ � �     