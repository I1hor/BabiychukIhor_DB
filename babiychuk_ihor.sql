PGDMP                       |            cursova    16.1    16.1 #               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            
           1262    16398    cursova    DATABASE     ~   CREATE DATABASE cursova WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Ukrainian_Ukraine.utf8';
    DROP DATABASE cursova;
                postgres    false            �            1259    16427    departments    TABLE     �   CREATE TABLE public.departments (
    department_id integer NOT NULL,
    department_name character varying(255) NOT NULL,
    faculty_id integer
);
    DROP TABLE public.departments;
       public         heap    postgres    false            �            1259    16426    departments_department_id_seq    SEQUENCE     �   CREATE SEQUENCE public.departments_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.departments_department_id_seq;
       public          postgres    false    218                       0    0    departments_department_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.departments_department_id_seq OWNED BY public.departments.department_id;
          public          postgres    false    217            �            1259    16451    disciplines    TABLE     '  CREATE TABLE public.disciplines (
    discipline_id integer NOT NULL,
    discipline_name character varying(255) NOT NULL,
    hours_in_general integer,
    program_id integer,
    lecture_hours integer,
    practical_hours integer,
    laboratory_hours integer,
    individual_hours integer
);
    DROP TABLE public.disciplines;
       public         heap    postgres    false            �            1259    16450    disciplines_discipline_id_seq    SEQUENCE     �   CREATE SEQUENCE public.disciplines_discipline_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.disciplines_discipline_id_seq;
       public          postgres    false    222                       0    0    disciplines_discipline_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.disciplines_discipline_id_seq OWNED BY public.disciplines.discipline_id;
          public          postgres    false    221            �            1259    16439    educational_programs    TABLE     �   CREATE TABLE public.educational_programs (
    program_id integer NOT NULL,
    program_name character varying(255) NOT NULL,
    duration integer,
    dep_id integer,
    level_of_education character varying(50)
);
 (   DROP TABLE public.educational_programs;
       public         heap    postgres    false            �            1259    16438 #   educational_programs_program_id_seq    SEQUENCE     �   CREATE SEQUENCE public.educational_programs_program_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.educational_programs_program_id_seq;
       public          postgres    false    220                       0    0 #   educational_programs_program_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.educational_programs_program_id_seq OWNED BY public.educational_programs.program_id;
          public          postgres    false    219            �            1259    16420 	   faculties    TABLE     u   CREATE TABLE public.faculties (
    faculty_id integer NOT NULL,
    faculty_name character varying(255) NOT NULL
);
    DROP TABLE public.faculties;
       public         heap    postgres    false            �            1259    16419    faculties_faculty_id_seq    SEQUENCE     �   CREATE SEQUENCE public.faculties_faculty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.faculties_faculty_id_seq;
       public          postgres    false    216                       0    0    faculties_faculty_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.faculties_faculty_id_seq OWNED BY public.faculties.faculty_id;
          public          postgres    false    215            `           2604    16430    departments department_id    DEFAULT     �   ALTER TABLE ONLY public.departments ALTER COLUMN department_id SET DEFAULT nextval('public.departments_department_id_seq'::regclass);
 H   ALTER TABLE public.departments ALTER COLUMN department_id DROP DEFAULT;
       public          postgres    false    217    218    218            b           2604    16454    disciplines discipline_id    DEFAULT     �   ALTER TABLE ONLY public.disciplines ALTER COLUMN discipline_id SET DEFAULT nextval('public.disciplines_discipline_id_seq'::regclass);
 H   ALTER TABLE public.disciplines ALTER COLUMN discipline_id DROP DEFAULT;
       public          postgres    false    222    221    222            a           2604    16442    educational_programs program_id    DEFAULT     �   ALTER TABLE ONLY public.educational_programs ALTER COLUMN program_id SET DEFAULT nextval('public.educational_programs_program_id_seq'::regclass);
 N   ALTER TABLE public.educational_programs ALTER COLUMN program_id DROP DEFAULT;
       public          postgres    false    219    220    220            _           2604    16423    faculties faculty_id    DEFAULT     |   ALTER TABLE ONLY public.faculties ALTER COLUMN faculty_id SET DEFAULT nextval('public.faculties_faculty_id_seq'::regclass);
 C   ALTER TABLE public.faculties ALTER COLUMN faculty_id DROP DEFAULT;
       public          postgres    false    216    215    216                       0    16427    departments 
   TABLE DATA           Q   COPY public.departments (department_id, department_name, faculty_id) FROM stdin;
    public          postgres    false    218   �*                 0    16451    disciplines 
   TABLE DATA           �   COPY public.disciplines (discipline_id, discipline_name, hours_in_general, program_id, lecture_hours, practical_hours, laboratory_hours, individual_hours) FROM stdin;
    public          postgres    false    222   V+                 0    16439    educational_programs 
   TABLE DATA           n   COPY public.educational_programs (program_id, program_name, duration, dep_id, level_of_education) FROM stdin;
    public          postgres    false    220   �+       �          0    16420 	   faculties 
   TABLE DATA           =   COPY public.faculties (faculty_id, faculty_name) FROM stdin;
    public          postgres    false    216   Q,                  0    0    departments_department_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.departments_department_id_seq', 6, true);
          public          postgres    false    217                       0    0    disciplines_discipline_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.disciplines_discipline_id_seq', 6, true);
          public          postgres    false    221                       0    0 #   educational_programs_program_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.educational_programs_program_id_seq', 6, true);
          public          postgres    false    219                       0    0    faculties_faculty_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.faculties_faculty_id_seq', 6, true);
          public          postgres    false    215            f           2606    16432    departments departments_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (department_id);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public            postgres    false    218            j           2606    16456    disciplines disciplines_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.disciplines
    ADD CONSTRAINT disciplines_pkey PRIMARY KEY (discipline_id);
 F   ALTER TABLE ONLY public.disciplines DROP CONSTRAINT disciplines_pkey;
       public            postgres    false    222            h           2606    16444 .   educational_programs educational_programs_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.educational_programs
    ADD CONSTRAINT educational_programs_pkey PRIMARY KEY (program_id);
 X   ALTER TABLE ONLY public.educational_programs DROP CONSTRAINT educational_programs_pkey;
       public            postgres    false    220            d           2606    16425    faculties faculties_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.faculties
    ADD CONSTRAINT faculties_pkey PRIMARY KEY (faculty_id);
 B   ALTER TABLE ONLY public.faculties DROP CONSTRAINT faculties_pkey;
       public            postgres    false    216            k           2606    16433 '   departments departments_faculty_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_faculty_id_fkey FOREIGN KEY (faculty_id) REFERENCES public.faculties(faculty_id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_faculty_id_fkey;
       public          postgres    false    216    4708    218            m           2606    16457 '   disciplines disciplines_program_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.disciplines
    ADD CONSTRAINT disciplines_program_id_fkey FOREIGN KEY (program_id) REFERENCES public.educational_programs(program_id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.disciplines DROP CONSTRAINT disciplines_program_id_fkey;
       public          postgres    false    222    220    4712            l           2606    16445 5   educational_programs educational_programs_dep_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.educational_programs
    ADD CONSTRAINT educational_programs_dep_id_fkey FOREIGN KEY (dep_id) REFERENCES public.departments(department_id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.educational_programs DROP CONSTRAINT educational_programs_dep_id_fkey;
       public          postgres    false    220    218    4710                V   x�3�tI-H,*�M�+Q�OS��,I-J,)-J�4�2B�Ȩ,�L.�4�2F�q��-(�TN�L�KN�4�2�g�)N������� �=         o   x��ͽ
� ����*����4���"!u���>
�������.�w��	���U0
��B�O9�uw�ׄ�`ޮ�[,�c�"����O������h�՝��,��;p5&         l   x�3�tJL�H��/R�OSp,*)�4�4�rq�&���e2*�3��9�8a�\Ɯ.
�y
���� u�ə�yɩ���Ɯ.��%�E�%�\&�1�o�����qqq �@�      �   B   x�3�tKL.�)�T�OSp,*)�2B	N�L�KN�2Ft�K��KM-��K�2��o�M�.�1z\\\ w"+\     