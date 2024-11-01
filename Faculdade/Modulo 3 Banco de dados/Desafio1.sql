PGDMP  !                    |            Cursos    16.4    16.4 /    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16475    Cursos    DATABASE        CREATE DATABASE "Cursos" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "Cursos";
                postgres    false            �            1259    16477    aluno    TABLE     v  CREATE TABLE public.aluno (
    ra integer NOT NULL,
    nome character varying(100) NOT NULL,
    cpf character varying(11) NOT NULL,
    datanascimento date NOT NULL,
    sexo character(1) NOT NULL,
    escolaridade character varying(50),
    email character varying(100) NOT NULL,
    CONSTRAINT aluno_sexo_check CHECK ((sexo = ANY (ARRAY['M'::bpchar, 'F'::bpchar])))
);
    DROP TABLE public.aluno;
       public         heap    postgres    false            �            1259    16476    aluno_ra_seq    SEQUENCE     �   CREATE SEQUENCE public.aluno_ra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.aluno_ra_seq;
       public          postgres    false    216            �           0    0    aluno_ra_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.aluno_ra_seq OWNED BY public.aluno.ra;
          public          postgres    false    215            �            1259    16528    curso    TABLE        CREATE TABLE public.curso (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    valor numeric(10,2) NOT NULL,
    cargahoraria integer NOT NULL,
    status boolean NOT NULL,
    professorresponsavel integer,
    periodooferta integer
);
    DROP TABLE public.curso;
       public         heap    postgres    false            �            1259    16527    curso_id_seq    SEQUENCE     �   CREATE SEQUENCE public.curso_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.curso_id_seq;
       public          postgres    false    222            �           0    0    curso_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.curso_id_seq OWNED BY public.curso.id;
          public          postgres    false    221            �            1259    16545 	   matricula    TABLE       CREATE TABLE public.matricula (
    id integer NOT NULL,
    raaluno integer,
    cursoid integer,
    datamatricula date NOT NULL,
    nota1 numeric(5,2),
    nota2 numeric(5,2),
    notafinal numeric(5,2) GENERATED ALWAYS AS (((COALESCE(nota1, (0)::numeric) * 0.5) + (COALESCE(nota2, (0)::numeric) * 0.5))) STORED,
    resultado character varying(10) GENERATED ALWAYS AS (
CASE
    WHEN (((COALESCE(nota1, (0)::numeric) * 0.5) + (COALESCE(nota2, (0)::numeric) * 0.5)) >= 7.0) THEN 'Aprovado'::text
    ELSE 'Reprovado'::text
END) STORED
);
    DROP TABLE public.matricula;
       public         heap    postgres    false            �            1259    16544    matricula_id_seq    SEQUENCE     �   CREATE SEQUENCE public.matricula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.matricula_id_seq;
       public          postgres    false    224            �           0    0    matricula_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.matricula_id_seq OWNED BY public.matricula.id;
          public          postgres    false    223            �            1259    16497    periodo    TABLE     r   CREATE TABLE public.periodo (
    id integer NOT NULL,
    datainicio date NOT NULL,
    datafim date NOT NULL
);
    DROP TABLE public.periodo;
       public         heap    postgres    false            �            1259    16496    periodo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.periodo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.periodo_id_seq;
       public          postgres    false    220            �           0    0    periodo_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.periodo_id_seq OWNED BY public.periodo.id;
          public          postgres    false    219            �            1259    16487 	   professor    TABLE     {  CREATE TABLE public.professor (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    cpf character varying(11) NOT NULL,
    datanascimento date NOT NULL,
    sexo character(1) NOT NULL,
    titulacao character varying(50),
    email character varying(100) NOT NULL,
    CONSTRAINT professor_sexo_check CHECK ((sexo = ANY (ARRAY['M'::bpchar, 'F'::bpchar])))
);
    DROP TABLE public.professor;
       public         heap    postgres    false            �            1259    16486    professor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.professor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.professor_id_seq;
       public          postgres    false    218            �           0    0    professor_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.professor_id_seq OWNED BY public.professor.id;
          public          postgres    false    217            .           2604    16480    aluno ra    DEFAULT     d   ALTER TABLE ONLY public.aluno ALTER COLUMN ra SET DEFAULT nextval('public.aluno_ra_seq'::regclass);
 7   ALTER TABLE public.aluno ALTER COLUMN ra DROP DEFAULT;
       public          postgres    false    216    215    216            1           2604    16531    curso id    DEFAULT     d   ALTER TABLE ONLY public.curso ALTER COLUMN id SET DEFAULT nextval('public.curso_id_seq'::regclass);
 7   ALTER TABLE public.curso ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            2           2604    16548    matricula id    DEFAULT     l   ALTER TABLE ONLY public.matricula ALTER COLUMN id SET DEFAULT nextval('public.matricula_id_seq'::regclass);
 ;   ALTER TABLE public.matricula ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            0           2604    16500 
   periodo id    DEFAULT     h   ALTER TABLE ONLY public.periodo ALTER COLUMN id SET DEFAULT nextval('public.periodo_id_seq'::regclass);
 9   ALTER TABLE public.periodo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            /           2604    16490    professor id    DEFAULT     l   ALTER TABLE ONLY public.professor ALTER COLUMN id SET DEFAULT nextval('public.professor_id_seq'::regclass);
 ;   ALTER TABLE public.professor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �          0    16477    aluno 
   TABLE DATA           Y   COPY public.aluno (ra, nome, cpf, datanascimento, sexo, escolaridade, email) FROM stdin;
    public          postgres    false    216   16       �          0    16528    curso 
   TABLE DATA           k   COPY public.curso (id, nome, valor, cargahoraria, status, professorresponsavel, periodooferta) FROM stdin;
    public          postgres    false    222   A7       �          0    16545 	   matricula 
   TABLE DATA           V   COPY public.matricula (id, raaluno, cursoid, datamatricula, nota1, nota2) FROM stdin;
    public          postgres    false    224   �7       �          0    16497    periodo 
   TABLE DATA           :   COPY public.periodo (id, datainicio, datafim) FROM stdin;
    public          postgres    false    220   �7       �          0    16487 	   professor 
   TABLE DATA           Z   COPY public.professor (id, nome, cpf, datanascimento, sexo, titulacao, email) FROM stdin;
    public          postgres    false    218   �7       �           0    0    aluno_ra_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.aluno_ra_seq', 6, true);
          public          postgres    false    215            �           0    0    curso_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.curso_id_seq', 2, true);
          public          postgres    false    221            �           0    0    matricula_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.matricula_id_seq', 6, true);
          public          postgres    false    223            �           0    0    periodo_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.periodo_id_seq', 2, true);
          public          postgres    false    219            �           0    0    professor_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.professor_id_seq', 4, true);
          public          postgres    false    217            8           2606    16485    aluno aluno_cpf_key 
   CONSTRAINT     M   ALTER TABLE ONLY public.aluno
    ADD CONSTRAINT aluno_cpf_key UNIQUE (cpf);
 =   ALTER TABLE ONLY public.aluno DROP CONSTRAINT aluno_cpf_key;
       public            postgres    false    216            :           2606    16483    aluno aluno_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.aluno
    ADD CONSTRAINT aluno_pkey PRIMARY KEY (ra);
 :   ALTER TABLE ONLY public.aluno DROP CONSTRAINT aluno_pkey;
       public            postgres    false    216            D           2606    16533    curso curso_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.curso
    ADD CONSTRAINT curso_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.curso DROP CONSTRAINT curso_pkey;
       public            postgres    false    222            F           2606    16552    matricula matricula_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.matricula
    ADD CONSTRAINT matricula_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.matricula DROP CONSTRAINT matricula_pkey;
       public            postgres    false    224            B           2606    16502    periodo periodo_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.periodo
    ADD CONSTRAINT periodo_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.periodo DROP CONSTRAINT periodo_pkey;
       public            postgres    false    220            >           2606    16495    professor professor_cpf_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.professor
    ADD CONSTRAINT professor_cpf_key UNIQUE (cpf);
 E   ALTER TABLE ONLY public.professor DROP CONSTRAINT professor_cpf_key;
       public            postgres    false    218            @           2606    16493    professor professor_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.professor
    ADD CONSTRAINT professor_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.professor DROP CONSTRAINT professor_pkey;
       public            postgres    false    218            ;           1259    16563    idx_aluno_cpf    INDEX     >   CREATE INDEX idx_aluno_cpf ON public.aluno USING btree (cpf);
 !   DROP INDEX public.idx_aluno_cpf;
       public            postgres    false    216            <           1259    16564    idx_professor_cpf    INDEX     F   CREATE INDEX idx_professor_cpf ON public.professor USING btree (cpf);
 %   DROP INDEX public.idx_professor_cpf;
       public            postgres    false    218            G           2606    16539    curso curso_periodooferta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.curso
    ADD CONSTRAINT curso_periodooferta_fkey FOREIGN KEY (periodooferta) REFERENCES public.periodo(id);
 H   ALTER TABLE ONLY public.curso DROP CONSTRAINT curso_periodooferta_fkey;
       public          postgres    false    4674    220    222            H           2606    16534 %   curso curso_professorresponsavel_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.curso
    ADD CONSTRAINT curso_professorresponsavel_fkey FOREIGN KEY (professorresponsavel) REFERENCES public.professor(id);
 O   ALTER TABLE ONLY public.curso DROP CONSTRAINT curso_professorresponsavel_fkey;
       public          postgres    false    218    4672    222            I           2606    16558     matricula matricula_cursoid_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.matricula
    ADD CONSTRAINT matricula_cursoid_fkey FOREIGN KEY (cursoid) REFERENCES public.curso(id);
 J   ALTER TABLE ONLY public.matricula DROP CONSTRAINT matricula_cursoid_fkey;
       public          postgres    false    224    4676    222            J           2606    16553     matricula matricula_raaluno_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.matricula
    ADD CONSTRAINT matricula_raaluno_fkey FOREIGN KEY (raaluno) REFERENCES public.aluno(ra);
 J   ALTER TABLE ONLY public.matricula DROP CONSTRAINT matricula_raaluno_fkey;
       public          postgres    false    224    216    4666            �      x�m�KN�0E�/��\=?ǿ��J�N�X`W�N�1b�IJ�T��ѹG�.�2����A���6֡ �rT\ 4���2kο1�1��t�|l7﹫_�g�m<�X<�(4c���B���ُ_��\��w+��l�!���a�A��F�Z��8N�|��
S�����)���!&J�֐�h� .���u�"��bfۜ��:�hP�r���#�u�;�N�a	���I��z�e��#ݼ�?��݊������}��      �   7   x�3�t�KO��H,�LTHIU(�O+)O,J�4200�30�44%���F\1z\\\ p�n      �   4   x�3�4A#]C]SNS=0�e�i�*e�2�4E�2I��b���� J�a      �   !   x�3�4202�50"�L��H�ؐ+F��� K�      �   �   x�]ν
�0����*��H~M���t(��]m(�zhԥWߨ���{>^	'L-�-��$ml�|Ri��.Wj8�4R��s�w�M[>�c
�=w��7�;�E����8��wV�#W�����]^����\���/a������� �+���*k���-�[�;�(c?9�K`     