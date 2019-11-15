PGDMP                      
    w            bookstar    11.5    11.5     	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    33149    bookstar    DATABASE     �   CREATE DATABASE bookstar WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE bookstar;
             postgres    false            �            1259    49520    books    TABLE     U  CREATE TABLE public.books (
    id integer NOT NULL,
    title character varying(512),
    author character varying(512),
    genre character(64),
    language character varying(64),
    year integer,
    price double precision,
    photopath character varying(512),
    single character varying(512),
    comment character varying(2048)
);
    DROP TABLE public.books;
       public         postgres    false            �            1259    49518    books_id_seq    SEQUENCE     �   CREATE SEQUENCE public.books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.books_id_seq;
       public       postgres    false    197                       0    0    books_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;
            public       postgres    false    196            �            1259    65882    contact    TABLE     �   CREATE TABLE public.contact (
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
       public       postgres    false    199                       0    0    contact_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.contact_id_seq OWNED BY public.contact.id;
            public       postgres    false    198            �
           2604    49523    books id    DEFAULT     d   ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);
 7   ALTER TABLE public.books ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            �
           2604    65885 
   contact id    DEFAULT     h   ALTER TABLE ONLY public.contact ALTER COLUMN id SET DEFAULT nextval('public.contact_id_seq'::regclass);
 9   ALTER TABLE public.contact ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199                      0    49520    books 
   TABLE DATA               l   COPY public.books (id, title, author, genre, language, year, price, photopath, single, comment) FROM stdin;
    public       postgres    false    197   �                 0    65882    contact 
   TABLE DATA               D   COPY public.contact (id, name, email, subject, message) FROM stdin;
    public       postgres    false    199   �,                  0    0    books_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.books_id_seq', 37, true);
            public       postgres    false    196                       0    0    contact_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.contact_id_seq', 3, true);
            public       postgres    false    198            �
           2606    49528    books books_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public         postgres    false    197            �
           2606    65887    contact contact_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.contact DROP CONSTRAINT contact_pkey;
       public         postgres    false    199                  x��[�rIr}���B/ڍ !�%Rou�����
o8Q�.�K���tuj=�G���_����̗���j ���c�;������*3O����|�.s���h�+��[���V]e[����mz��=���������|tr:9p|���辯����k��~g������V��	y���W�O�-���|���8�(�o�����q�u�X��	ݲ0�[��c�>t�٦-~��ߣن:w͢+��sӺ����H��ϵ)\c���&e�և���c�^l��c�Eh��/� )m49�m������s[���B���6�r11W�d��z�/�)�/�N��׮^v��ˣ�D�����x���K�X�%N��q�g�\��\��<���(�J���X��O��7dÃ}V���}f[/e���?C�(ov5�=+\n�ǲ�oq%Io&��]�y�ͨ����-��6V���6�if,�i������_��!�\p[x����ei��rr����#ָl��ZM�Vט7zkF�[�?n�{�>�8{0:�\\\3�ӽe���>D$�ɸ��l'�Sq��j;��l	��u���͕����?<սh֥�M�ZU�`�X_.������zm-փ�6>�b	]]:��y/K4]1c�QVd�]����AAe�~b�k͛�j�}�&wN�G���>�f��3��+�����?.��r1:y<�8�8����N��H1nR@�rF)������:����S[�7�P��p�|8��PY7��%��9w���%�z[B{]욵.�Ӷ> �Ԧ�uϡhY� �ՐZº��z��6lʹ/-AA���^�$��תL[����S���v������,�l���l��^p2�1�&�� � �a}�lq�c��潑�A��^!���+a�Ӧ����4 �۲����N��,}?m{���~�����ES�����f)��f���n�q��*l���j�5��/ph��*m;6sx�Ab!&e���!���y� �Z܌��|պ�%,V���.&�A���:1?�YH���gʾQ0�}�k o#�?���u+hh��s�]� h�dD3z^C$�2�s����2z�����+���'�ל���;�l�h�ݤM<9���Sm�5 0���/ ��#oa����>���LU�[��U�8���b�@Wg��\#։�f��FM +�:��C\�h�9llb��`/�Ċjj�^�S�F�H��t�XF
 bq����يcp�Mz���� ����BA�O�s���l����}�K[߶>���]���������A*_C&�tsx�s�On�'g b3L9�U�m;F�e�l���,X�\b2&������aK�p�.��+��W�`A����i�������xxS7��O�]#�"2l�n`[��op������(��*l��`�/|K��'�   ��
��6U��!%�� a�ړY��´)p-�-�C�ݧh�UA�?H1a���W�n��X��R� .!(�q]�zKZi>�R��Sh�|�R^��eᶱ��;��v@**�$"���Ƀ���L��j7\"���Y�<��&�%�W*q=S ���-�@+�0�� �i�E����87=n��L�K�,f:�c�Ʒ�|NF�B���D��+'o:lPc�d��QH�3�}�s8�ML'<��R���Ո�
F���r�0į�O�����)��97���?N�!�Q������%� ܇����� �L�A�	'�c�������p�K����ؒGG�قl�_;a�9Sdx�|��ծ�(�Y��..l7o��-��H_���Au*z+������Y/a��lă�	 t���w���i�a��*ѻ���#�֧f�^̒�?��h]-�,���Iȗ�p���R��ē2�m��!"��pv �BSQ�zW�պC��N���{K�{-���Ux�[��LԸ	}%�o� ��LwDB�'���K}n��u���,�h4�@�[6��օ�����q�d*��#��}E!/m�6�����	�pLaAe�"�N�c�O���C�U�^<DƆ�x��J�B0r^,�,���J%`iA7��;�XWm�<��B��q7�'�Օc���5��L���؃K���Rr �,u�  ^h��F�2�#J�M���Ld�� Ε��O5��!L�+��:2��� іG#Q$]^[���bB5�l"�`ј��'"u����DC]a8�t�֖���b8����X�%.5�� �y51o���ꐧ�����C�D�"����fa1S�5�d�FS!�Y�;M=�sX�<�,�:�k���u��C�RJ;���SNΏ����M�_�`$�ְ�&�q�&H�s��RB���V�&d���q&���<ײܵ ��f�60'�µ�P���dO��TX2�R��h+�~A�׮��iO�[�$O�!������et���]��
F��"�:ґ?]��"�^�*�9�s@�H�n���d��L^��\3�k&o�Dҹ�^=ak���Z@[��$+�xv%��� /�z��gx����py\y).��a޵b\O��Vh���\a&�rn-K�к����PQ��2��B��z���H�{D�*�"�v��u5b�a%��ެ���9�i�"���䥬�,����?@�P�
���xZw��.k\�Ĥ���h]��"A	�<}�B�5o�qp��o��O�T! �۫+���M�Iu�@y�I��H^n�0�S���P�w���SA�pM��p�ъ/���vbn:��J2j�7�J�2�V/;
s"&}�}�B.=kn-�lR8`���b�6zMe�&�
����J`&l�ˬ}Fw�`H�؄V���3�A@�6N���N�����=-������sY��G3�Ӷ�Iח�_��R�i�����l^�D�YI����H��SGaq�{Q@�
����G)�b{�˚����p�1y)0�"��Xl)I��َ�"��\�eA����ϵ"��O���o@*lL�>����+k"]�9��5�j���Le%�к&�;w'>/Y%�ĉ?#��6�:)ks�]kE�<�|�*];�D3���*�Ȥru����Gǣ��g�^E�ɑ���/BŁ�Y�Q2�D�����R�U����%80�m�R��r�6V����RT��T��lc���/4 /�:�#�DF� E���c��K���w��Z�--gS�g�����Ö� 8��b�kaxXD|����':6{Z�N3��9=M%�d	lj���c�{AL�{�D�=z#!�V� ���\�VC�ةU�__��PS�&�33>�L�OK���(Jx�,�����Y�!mN���b�l�kY�>��%��������]ۓ�e���x�r�OP<�rP�R��:-�d�L��e��=�j�G/�^��]��d�R�B��ߚ�[f �q�A*�?����q��r��/���y>
2�xl���5�1h��	B���`��L�C`&���UH��V��*�OM�<ͦ+Ys��ҫQ=8���%{��� H�:l�~t���@��V���o���f�"���l�n'��K'�[����߸��]��=3)�7��׋�c8bUg�X>lE�ܤ�,2�����K�"3'�ۺr����P�8K��%�0�a����J���[��	R>E���.�#ކ�h�1_�L�Nm(G�����?���r���{�>&��K/�@�>���C�u,�Q	/�`�Ph���]9'fo"r���k2Z���R�&OHW�=��\v�^
���=�6�8Fn�������b�\�ۦb�W�ѳP��5��r��:D�htr<y�#J��(in����t�2��n��w�w�-�dHthU�p5�b�tK�z6�A9�Q!�\��'-�*Ԅ�xtT�rqP*�?��+q��Þ��6ȩ��Yp���6���a�Hö�;�i$^j`�6v
r eH�����vZ��CbR��UA���tk��C�s���(g��g<T�6,ʈ<w�?A�����SR�縣�]�kV����y��^:x���IՕ�g������/�� �	  �����N��D��hȹ��A���"e52:��!Xtխ�We����-S%n�vEJ��} ����K�o�(`�������;�֯V�y�?po;� Qk�"j%�8�Lf�͇d� ��Go|���5��ym��v]�|t�`��:�8���(č9=�KCL��^�t86��F}�^������#�F/\٦1���uO|Ώ�.�����L��q�'H�9�#��2�2r_�f��XsR4#��Ol���{]/�j�2,ȓ��H��<d݀��M�� 'hݗv������:Л$A`]?�Ku95^��1��ަՓ�\�]�N.YȨ���?�>�nb�܆�	��=��M�HL�Ǹ.;�H�w�&.FE�q� �LY�3�0��d���Qx6�k���|�����?�?Z��u�=��N?�f����Fw�����d��f"�ũBS{+ݪ%�C�tYQ<;f�K��}�X��T]�Rs�CI(d������0��p�4�K�:6A�-����Ѳ:h�#�2�:i���S���NlT'�
_�i,Oܑ@5T���i�Fj`��;�jtQ��J�M�QnO`��L!y���a�4��%r�`'��yp:blW���&4���k�h�["�?�������o1�����l���5�9��b(f��5dT$�qt
��ޥb�4������h^�*=v��`G�ҡM7�k,A�ޗ]-��估�F�+�4)��Z���^�<������YZ߿��ڮF(�}+�����?�4	�[�����3��1��"�� S܆�0���Ѓy�Y��R�8��
��LV��i[(����X���/ДFu��pUf&l ���,���A����ρ���e|J?gY�I�w��1��ҞQ_��R���
�g7q�"o��ԡ�v�+���Ja!�&��\s�v\�U�$��ĭ�t��-������c����5c�]-��d�پ�َK�d]=Ǎ�@_ɂ�����������I��G���(�J��A>2KR�̇�_��06���|�b�cԺa��QQjN���+�eҍ�v���:�o�P*3&�M.%��#����o�?�9��K�0���4�w�X)H��7��0��M�7Z][�jy��_U�A>�lb���4\�c��7.%J&B�M��4�]?��H�jD��<<C4ƙ��K̻[.��ο�W;;,��I��o��(��-~�lhnH�j�1��Ya��T�>j�%�؉S�4vJc�R�}l�7P ���z�2���N����w�
�7�H�aD��n?��)�����D�em҂��*��)�V�B��6Su�9~s�e��6���`�Y�2֫�K�h��+/6��v,���&1RU2/}XijRyNfw�P���v��-�1���%`u��s������ �T���Oͦ3��c���O�D�&��/�-5�)���e����ol�⛥I}�h�PIf�w�w��ge�9�d���~��T3*�$�����:���]�6M�H�6 `# U���i.a?Yq0��{\ծ�3�4��i��g})�B��R����Y�D�%�T�p�l�#�������;����5y�tr	s�I�ّ�(7�\�õt���x�y�(,�?�:�	Ƕ�Bl�hqvp\3��$e7��>��[�ʣ��Zr"�,���C5��gǀ��T�3��$U�G�J����T6��^�6!��1ӣ�ku���Tr)�]�N9�	�wU%���qj��ℛP0�f"�7���%=t��kkKS��R8�\��ya'-�.�W���^wq_8�'�SX�9Nm���[��� �*���#���R0O�� �`"n�y�:\xP{Uv��Q�̥"	7Z{�l$�������#���2��_����J�'-@5'%R��B.x��?��Ry}4�0�p�8z)��ڼ(��V�K'�Q?9�A�4��(��r�Y��Y�����k�!z��	t��ll�I�mC�ĵ3�v���ݏ2�����E��J ���b�h�]�M<�	�a��{iH&PPy��(���j*	��ċ�>_i�l�Nc��{��X"�|X�T�i݂Fv���j
<�,-�KyE=9�7/�R,kX2d=0a�J~�4a3�n�#�'���Z�>MD��Lc(֦Y=��C�j��[��� �? ��"�<�rD��B�a�w?�V�o\��g�g���I��G���P/�@���LIۮ��~b��^{������'�p��;���Q��;A9���L^��wg��g�S�a���ꝙBo�y_�ү�=E*H��r�~��휻q:�S�,yc3�<�J ��w�p>�t�&W�M�
��;Q� )H�m8+�@��2�! ��]L=��41/،;����ۡө��WV'㺍v�U�Z�]��5K5'&���2��Gm|���w�S�/�4[p3W����A������._J�,%�ې%�`-���*��Z?��*0 �X&�3�#�e��I=7�����d0R���vÓ�K�fX����ɝ;w�&9;         @   x�3�tI��L�Qp���/I,�L��鉹�9z������9�%�N�y�
!E��I����\1z\\\ ��Q     