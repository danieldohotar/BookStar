PGDMP     0                
    w            bookstar    11.5    11.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    33149    bookstar    DATABASE     �   CREATE DATABASE bookstar WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE bookstar;
             postgres    false            �            1259    65882    contact    TABLE     �   CREATE TABLE public.contact (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    subject character varying(55) NOT NULL,
    message character varying(300) NOT NULL
);
    DROP TABLE public.contact;
       public         postgres    false            �            1259    65880    contact_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.contact_id_seq;
       public       postgres    false    199                       0    0    contact_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.contact_id_seq OWNED BY public.contact.id;
            public       postgres    false    198            �
           2604    65885 
   contact id    DEFAULT     h   ALTER TABLE ONLY public.contact ALTER COLUMN id SET DEFAULT nextval('public.contact_id_seq'::regclass);
 9   ALTER TABLE public.contact ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199            �
          0    65882    contact 
   TABLE DATA               D   COPY public.contact (id, name, email, subject, message) FROM stdin;
    public       postgres    false    199   �
                  0    0    contact_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.contact_id_seq', 3, true);
            public       postgres    false    198            �
           2606    65887    contact contact_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.contact DROP CONSTRAINT contact_pkey;
       public         postgres    false    199            �
   @   x�3�tI��L�Qp���/I,�L��鉹�9z������9�%�N�y�
!E��I����\1z\\\ ��Q     