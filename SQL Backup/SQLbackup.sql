PGDMP                          |            Makerble    15.4    15.4 
    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16443    Makerble    DATABASE     �   CREATE DATABASE "Makerble" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "Makerble";
                postgres    false            �            1259    16449    patient_details    TABLE     �   CREATE TABLE public.patient_details (
    id integer NOT NULL,
    fname character varying(50),
    lname character varying(50),
    date_registeration character varying(10)
);
 #   DROP TABLE public.patient_details;
       public         heap    postgres    false            �            1259    16444    user_details    TABLE     �   CREATE TABLE public.user_details (
    id integer NOT NULL,
    username character varying(50),
    password character varying(50),
    jobtype character(1)
);
     DROP TABLE public.user_details;
       public         heap    postgres    false            �          0    16449    patient_details 
   TABLE DATA           O   COPY public.patient_details (id, fname, lname, date_registeration) FROM stdin;
    public          postgres    false    215   S
       �          0    16444    user_details 
   TABLE DATA           G   COPY public.user_details (id, username, password, jobtype) FROM stdin;
    public          postgres    false    214   �
       k           2606    16453 $   patient_details patient_details_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.patient_details
    ADD CONSTRAINT patient_details_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.patient_details DROP CONSTRAINT patient_details_pkey;
       public            postgres    false    215            i           2606    16448    user_details user_details_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.user_details
    ADD CONSTRAINT user_details_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.user_details DROP CONSTRAINT user_details_pkey;
       public            postgres    false    214            �   )   x�34 ΀Ē�ԼΨԢ|NCKKK]]c�=... �H�      �      x�3�LL��̃�A\1z\\\ Cwb     