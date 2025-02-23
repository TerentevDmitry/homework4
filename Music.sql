PGDMP     "                    {            MusicService    15.4    15.4 ;    D           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            E           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            F           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            G           1262    16445    MusicService    DATABASE     �   CREATE DATABASE "MusicService" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "MusicService";
                postgres    false            H           0    0    DATABASE "MusicService"    COMMENT     �   COMMENT ON DATABASE "MusicService" IS 'Домашнее задание к занятию «Работа с SQL. Создание БД». Задание 1';
                   postgres    false    3399            �            1259    16493 
   album_list    TABLE     �   CREATE TABLE public.album_list (
    id_album_list integer NOT NULL,
    album_name character varying(40) NOT NULL,
    album_release_year character varying(4) NOT NULL
);
    DROP TABLE public.album_list;
       public         heap    postgres    false            �            1259    16492    albumlist_idalbumlist_seq    SEQUENCE     �   CREATE SEQUENCE public.albumlist_idalbumlist_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.albumlist_idalbumlist_seq;
       public          postgres    false    220            I           0    0    albumlist_idalbumlist_seq    SEQUENCE OWNED BY     Z   ALTER SEQUENCE public.albumlist_idalbumlist_seq OWNED BY public.album_list.id_album_list;
          public          postgres    false    219            �            1259    17097    broker_album_track    TABLE     s   CREATE TABLE public.broker_album_track (
    id_album_list integer NOT NULL,
    id_track_list integer NOT NULL
);
 &   DROP TABLE public.broker_album_track;
       public         heap    postgres    false            �            1259    16472    broker_genres_performers    TABLE        CREATE TABLE public.broker_genres_performers (
    id_genres_list integer NOT NULL,
    id_performers_list integer NOT NULL
);
 ,   DROP TABLE public.broker_genres_performers;
       public         heap    postgres    false            �            1259    16511    broker_performers_album    TABLE     }   CREATE TABLE public.broker_performers_album (
    id_album_list integer NOT NULL,
    id_performers_list integer NOT NULL
);
 +   DROP TABLE public.broker_performers_album;
       public         heap    postgres    false            �            1259    16661    collections_list    TABLE     
  CREATE TABLE public.collections_list (
    id_collections_list integer NOT NULL,
    collection_name character varying(40) NOT NULL,
    collection_release_year character varying(4) NOT NULL,
    id_track_list integer NOT NULL,
    id_album_list integer NOT NULL
);
 $   DROP TABLE public.collections_list;
       public         heap    postgres    false            �            1259    16660 (   collections_list_id_collections_list_seq    SEQUENCE     �   CREATE SEQUENCE public.collections_list_id_collections_list_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.collections_list_id_collections_list_seq;
       public          postgres    false    225            J           0    0 (   collections_list_id_collections_list_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.collections_list_id_collections_list_seq OWNED BY public.collections_list.id_collections_list;
          public          postgres    false    224            �            1259    16466    genres_list    TABLE     x   CREATE TABLE public.genres_list (
    id_genres_list integer NOT NULL,
    genre_name character varying(40) NOT NULL
);
    DROP TABLE public.genres_list;
       public         heap    postgres    false            �            1259    16465    genreslist_idgenreslist_seq    SEQUENCE     �   CREATE SEQUENCE public.genreslist_idgenreslist_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.genreslist_idgenreslist_seq;
       public          postgres    false    217            K           0    0    genreslist_idgenreslist_seq    SEQUENCE OWNED BY     ^   ALTER SEQUENCE public.genreslist_idgenreslist_seq OWNED BY public.genres_list.id_genres_list;
          public          postgres    false    216            �            1259    16500 
   track_list    TABLE     �   CREATE TABLE public.track_list (
    id_track_list integer NOT NULL,
    track_name character varying(40) NOT NULL,
    duration_track time without time zone NOT NULL,
    id_album_list integer NOT NULL
);
    DROP TABLE public.track_list;
       public         heap    postgres    false            �            1259    16499    tracklist_idtracklist_seq    SEQUENCE     �   CREATE SEQUENCE public.tracklist_idtracklist_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tracklist_idtracklist_seq;
       public          postgres    false    222            L           0    0    tracklist_idtracklist_seq    SEQUENCE OWNED BY     Z   ALTER SEQUENCE public.tracklist_idtracklist_seq OWNED BY public.track_list.id_track_list;
          public          postgres    false    221            �            1259    16459    performers_list    TABLE     �   CREATE TABLE public.performers_list (
    id_performers_list integer DEFAULT nextval('public.tracklist_idtracklist_seq'::regclass) NOT NULL,
    performer_name character varying(40) NOT NULL
);
 #   DROP TABLE public.performers_list;
       public         heap    postgres    false    221            �            1259    16458 #   performerslist_idperformerslist_seq    SEQUENCE     �   CREATE SEQUENCE public.performerslist_idperformerslist_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.performerslist_idperformerslist_seq;
       public          postgres    false    215            M           0    0 #   performerslist_idperformerslist_seq    SEQUENCE OWNED BY     n   ALTER SEQUENCE public.performerslist_idperformerslist_seq OWNED BY public.performers_list.id_performers_list;
          public          postgres    false    214            �           2604    16496    album_list id_album_list    DEFAULT     �   ALTER TABLE ONLY public.album_list ALTER COLUMN id_album_list SET DEFAULT nextval('public.albumlist_idalbumlist_seq'::regclass);
 G   ALTER TABLE public.album_list ALTER COLUMN id_album_list DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    16664 $   collections_list id_collections_list    DEFAULT     �   ALTER TABLE ONLY public.collections_list ALTER COLUMN id_collections_list SET DEFAULT nextval('public.collections_list_id_collections_list_seq'::regclass);
 S   ALTER TABLE public.collections_list ALTER COLUMN id_collections_list DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    16469    genres_list id_genres_list    DEFAULT     �   ALTER TABLE ONLY public.genres_list ALTER COLUMN id_genres_list SET DEFAULT nextval('public.genreslist_idgenreslist_seq'::regclass);
 I   ALTER TABLE public.genres_list ALTER COLUMN id_genres_list DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16503    track_list id_track_list    DEFAULT     �   ALTER TABLE ONLY public.track_list ALTER COLUMN id_track_list SET DEFAULT nextval('public.tracklist_idtracklist_seq'::regclass);
 G   ALTER TABLE public.track_list ALTER COLUMN id_track_list DROP DEFAULT;
       public          postgres    false    221    222    222            ;          0    16493 
   album_list 
   TABLE DATA           S   COPY public.album_list (id_album_list, album_name, album_release_year) FROM stdin;
    public          postgres    false    220   2L       A          0    17097    broker_album_track 
   TABLE DATA           J   COPY public.broker_album_track (id_album_list, id_track_list) FROM stdin;
    public          postgres    false    226   M       9          0    16472    broker_genres_performers 
   TABLE DATA           V   COPY public.broker_genres_performers (id_genres_list, id_performers_list) FROM stdin;
    public          postgres    false    218   4M       >          0    16511    broker_performers_album 
   TABLE DATA           T   COPY public.broker_performers_album (id_album_list, id_performers_list) FROM stdin;
    public          postgres    false    223   gM       @          0    16661    collections_list 
   TABLE DATA           �   COPY public.collections_list (id_collections_list, collection_name, collection_release_year, id_track_list, id_album_list) FROM stdin;
    public          postgres    false    225   �M       8          0    16466    genres_list 
   TABLE DATA           A   COPY public.genres_list (id_genres_list, genre_name) FROM stdin;
    public          postgres    false    217   YN       6          0    16459    performers_list 
   TABLE DATA           M   COPY public.performers_list (id_performers_list, performer_name) FROM stdin;
    public          postgres    false    215   �N       =          0    16500 
   track_list 
   TABLE DATA           ^   COPY public.track_list (id_track_list, track_name, duration_track, id_album_list) FROM stdin;
    public          postgres    false    222   O       N           0    0    albumlist_idalbumlist_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.albumlist_idalbumlist_seq', 2, true);
          public          postgres    false    219            O           0    0 (   collections_list_id_collections_list_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.collections_list_id_collections_list_seq', 32, true);
          public          postgres    false    224            P           0    0    genreslist_idgenreslist_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.genreslist_idgenreslist_seq', 5, true);
          public          postgres    false    216            Q           0    0 #   performerslist_idperformerslist_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.performerslist_idperformerslist_seq', 11, true);
          public          postgres    false    214            R           0    0    tracklist_idtracklist_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.tracklist_idtracklist_seq', 15, true);
          public          postgres    false    221            �           2606    16498    album_list albumlist_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.album_list
    ADD CONSTRAINT albumlist_pkey PRIMARY KEY (id_album_list);
 C   ALTER TABLE ONLY public.album_list DROP CONSTRAINT albumlist_pkey;
       public            postgres    false    220            �           2606    16666 &   collections_list collections_list_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.collections_list
    ADD CONSTRAINT collections_list_pkey PRIMARY KEY (id_collections_list);
 P   ALTER TABLE ONLY public.collections_list DROP CONSTRAINT collections_list_pkey;
       public            postgres    false    225            �           2606    16471    genres_list genreslist_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.genres_list
    ADD CONSTRAINT genreslist_pkey PRIMARY KEY (id_genres_list);
 E   ALTER TABLE ONLY public.genres_list DROP CONSTRAINT genreslist_pkey;
       public            postgres    false    217            �           2606    16464 #   performers_list performerslist_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.performers_list
    ADD CONSTRAINT performerslist_pkey PRIMARY KEY (id_performers_list);
 M   ALTER TABLE ONLY public.performers_list DROP CONSTRAINT performerslist_pkey;
       public            postgres    false    215            �           2606    16505    track_list tracklist_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.track_list
    ADD CONSTRAINT tracklist_pkey PRIMARY KEY (id_track_list);
 C   ALTER TABLE ONLY public.track_list DROP CONSTRAINT tracklist_pkey;
       public            postgres    false    222            �           2606    17111    album_list unique_album_name 
   CONSTRAINT     ]   ALTER TABLE ONLY public.album_list
    ADD CONSTRAINT unique_album_name UNIQUE (album_name);
 F   ALTER TABLE ONLY public.album_list DROP CONSTRAINT unique_album_name;
       public            postgres    false    220            �           2606    17113 '   collections_list unique_collection_name 
   CONSTRAINT     m   ALTER TABLE ONLY public.collections_list
    ADD CONSTRAINT unique_collection_name UNIQUE (collection_name);
 Q   ALTER TABLE ONLY public.collections_list DROP CONSTRAINT unique_collection_name;
       public            postgres    false    225            �           2606    17115    genres_list unique_genre_name 
   CONSTRAINT     ^   ALTER TABLE ONLY public.genres_list
    ADD CONSTRAINT unique_genre_name UNIQUE (genre_name);
 G   ALTER TABLE ONLY public.genres_list DROP CONSTRAINT unique_genre_name;
       public            postgres    false    217            �           2606    17117 %   performers_list unique_performer_name 
   CONSTRAINT     j   ALTER TABLE ONLY public.performers_list
    ADD CONSTRAINT unique_performer_name UNIQUE (performer_name);
 O   ALTER TABLE ONLY public.performers_list DROP CONSTRAINT unique_performer_name;
       public            postgres    false    215            �           2606    17119    track_list unique_track_name 
   CONSTRAINT     ]   ALTER TABLE ONLY public.track_list
    ADD CONSTRAINT unique_track_name UNIQUE (track_name);
 F   ALTER TABLE ONLY public.track_list DROP CONSTRAINT unique_track_name;
       public            postgres    false    222            �           2606    17100 8   broker_album_track broker_album_track_id_album_list_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.broker_album_track
    ADD CONSTRAINT broker_album_track_id_album_list_fkey FOREIGN KEY (id_album_list) REFERENCES public.album_list(id_album_list);
 b   ALTER TABLE ONLY public.broker_album_track DROP CONSTRAINT broker_album_track_id_album_list_fkey;
       public          postgres    false    3219    220    226            �           2606    17105 8   broker_album_track broker_album_track_id_track_list_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.broker_album_track
    ADD CONSTRAINT broker_album_track_id_track_list_fkey FOREIGN KEY (id_track_list) REFERENCES public.track_list(id_track_list);
 b   ALTER TABLE ONLY public.broker_album_track DROP CONSTRAINT broker_album_track_id_track_list_fkey;
       public          postgres    false    3223    222    226            �           2606    16475 A   broker_genres_performers brokergenresperformers_idgenreslist_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.broker_genres_performers
    ADD CONSTRAINT brokergenresperformers_idgenreslist_fkey FOREIGN KEY (id_genres_list) REFERENCES public.genres_list(id_genres_list);
 k   ALTER TABLE ONLY public.broker_genres_performers DROP CONSTRAINT brokergenresperformers_idgenreslist_fkey;
       public          postgres    false    217    218    3215            �           2606    16480 E   broker_genres_performers brokergenresperformers_idperformerslist_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.broker_genres_performers
    ADD CONSTRAINT brokergenresperformers_idperformerslist_fkey FOREIGN KEY (id_performers_list) REFERENCES public.performers_list(id_performers_list);
 o   ALTER TABLE ONLY public.broker_genres_performers DROP CONSTRAINT brokergenresperformers_idperformerslist_fkey;
       public          postgres    false    3211    218    215            �           2606    16514 >   broker_performers_album brokerperformersalbum_idalbumlist_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.broker_performers_album
    ADD CONSTRAINT brokerperformersalbum_idalbumlist_fkey FOREIGN KEY (id_album_list) REFERENCES public.album_list(id_album_list);
 h   ALTER TABLE ONLY public.broker_performers_album DROP CONSTRAINT brokerperformersalbum_idalbumlist_fkey;
       public          postgres    false    220    223    3219            �           2606    16519 C   broker_performers_album brokerperformersalbum_idperformerslist_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.broker_performers_album
    ADD CONSTRAINT brokerperformersalbum_idperformerslist_fkey FOREIGN KEY (id_performers_list) REFERENCES public.performers_list(id_performers_list);
 m   ALTER TABLE ONLY public.broker_performers_album DROP CONSTRAINT brokerperformersalbum_idperformerslist_fkey;
       public          postgres    false    223    3211    215            �           2606    16672 4   collections_list collections_list_id_album_list_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.collections_list
    ADD CONSTRAINT collections_list_id_album_list_fkey FOREIGN KEY (id_album_list) REFERENCES public.album_list(id_album_list);
 ^   ALTER TABLE ONLY public.collections_list DROP CONSTRAINT collections_list_id_album_list_fkey;
       public          postgres    false    220    3219    225            �           2606    16667 4   collections_list collections_list_id_track_list_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.collections_list
    ADD CONSTRAINT collections_list_id_track_list_fkey FOREIGN KEY (id_track_list) REFERENCES public.track_list(id_track_list);
 ^   ALTER TABLE ONLY public.collections_list DROP CONSTRAINT collections_list_id_track_list_fkey;
       public          postgres    false    225    222    3223            �           2606    16506 %   track_list tracklist_idalbumlist_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.track_list
    ADD CONSTRAINT tracklist_idalbumlist_fkey FOREIGN KEY (id_album_list) REFERENCES public.album_list(id_album_list);
 O   ALTER TABLE ONLY public.track_list DROP CONSTRAINT tracklist_idalbumlist_fkey;
       public          postgres    false    220    3219    222            ;   �   x�M���P��g�b^�������������^+Ś��;4T\�}����9l,f2���\l�]E��?���}��YE�|MG<�M��b��rNx��e��oT(��RC�J�E�9n:ѱNpAf ��?@��nSSጌQ"�{<tʲ��wR���R8Ⱦ�@�K�]����������ɈcѠND�q�      A   #   x�3�4�2�4�2�4�2�4�2�4�͸b���� 4�}      9   #   x�3�4�2�4b.cNS 6bs 6����� DZ�      >   +   x��9 0��Lf��1�*�W2RE�i%��ǽ�|i��      @   �   x�%�=
�@��S���&��R�k���&�Y����z�
AQ�0{#7�<���I|����'W t�@A��C���&v��q�4Y��� �2���Sw�3��ng�V�F+� Qj�?����D��O/���ύ/��#���:'�24d$4$�l�F��;�      8   %   x�3��O��2��J���2�t�H�+������� tLp      6   {   x�3�����H��Q�.*M�2�s�3J�JK2�+�L8�2����L9����RKR�����8�JBKJs��9�\}��9/L������.6ɝ
�\�p��b���{/컰�+F��� Ge1&      =   �   x�5ϽN�0���� ��g=�T"K�Djm�M�n�!!+�*hھ����%�`ٺ�����S7����U�zT;26:5R��Ң���TX8�Ĩ�Q��v���}ӆ�[$b�w���/i��iC��ۄ5	���OJ{Y��&ҽ�0lflW��z>zu���-�������?�-�9L8=L�r,@*��T�^�}Q�>�'�i�]�;��q�o�8k��GJ-�����>�B�%~w�     