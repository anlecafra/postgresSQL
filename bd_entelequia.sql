PGDMP      #        
        }            BD_entelequia_store    16.6    17.1 �   ]           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            ^           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            _           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            `           1262    950272    BD_entelequia_store    DATABASE     w   CREATE DATABASE "BD_entelequia_store" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
 %   DROP DATABASE "BD_entelequia_store";
                     Comfe_owner    false            �           1247    1220660    tipo_factura_enum    TYPE     U   CREATE TYPE public.tipo_factura_enum AS ENUM (
    'A',
    'B',
    'C',
    'D'
);
 $   DROP TYPE public.tipo_factura_enum;
       public               Comfe_owner    false            �           1247    1220670    tipo_pago_enum    TYPE     y   CREATE TYPE public.tipo_pago_enum AS ENUM (
    'EFECTIVO',
    'CHEQUE',
    'TARJETA CREDITO',
    'TARJETA DEBITO'
);
 !   DROP TYPE public.tipo_pago_enum;
       public               Comfe_owner    false            �            1259    1499136    animales    TABLE     �   CREATE TABLE public.animales (
    id integer NOT NULL,
    nombre character varying(30) DEFAULT 'sin nombre'::character varying,
    edad integer
);
    DROP TABLE public.animales;
       public         heap r       Comfe_owner    false            a           0    0    TABLE animales    COMMENT     7   COMMENT ON TABLE public.animales IS 'creada por luys';
          public               Comfe_owner    false    247            �            1259    1499142    animales_id_seq    SEQUENCE     �   CREATE SEQUENCE public.animales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.animales_id_seq;
       public               Comfe_owner    false    247            b           0    0    animales_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.animales_id_seq OWNED BY public.animales.id;
          public               Comfe_owner    false    249                       1259    1499199    artistas    TABLE     �   CREATE TABLE public.artistas (
    id integer NOT NULL,
    nombre character varying(100),
    genero character varying(50),
    nacionalidad character varying(50),
    fecha_nacimiento date,
    numero_albumes integer
);
    DROP TABLE public.artistas;
       public         heap r       Comfe_owner    false                       1259    1499198    artistas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.artistas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.artistas_id_seq;
       public               Comfe_owner    false    259            c           0    0    artistas_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.artistas_id_seq OWNED BY public.artistas.id;
          public               Comfe_owner    false    258            +           1259    1531984    artistascallejeros    TABLE     �   CREATE TABLE public.artistascallejeros (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    estiloartistico character varying(50),
    ciudad character varying(50),
    fechapresentacion date
);
 &   DROP TABLE public.artistascallejeros;
       public         heap r       Comfe_owner    false            *           1259    1531983    artistascallejeros_id_seq    SEQUENCE     �   CREATE SEQUENCE public.artistascallejeros_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.artistascallejeros_id_seq;
       public               Comfe_owner    false    299            d           0    0    artistascallejeros_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.artistascallejeros_id_seq OWNED BY public.artistascallejeros.id;
          public               Comfe_owner    false    298                       1259    1523713    canciones_salsa    TABLE       CREATE TABLE public.canciones_salsa (
    id integer NOT NULL,
    nombre_cancion character varying(255) NOT NULL,
    autor character varying(255) NOT NULL,
    orquesta character varying(255) NOT NULL,
    ano_publicacion integer NOT NULL,
    album character varying(255) NOT NULL
);
 #   DROP TABLE public.canciones_salsa;
       public         heap r       Comfe_owner    false                       1259    1523712    canciones_salsa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.canciones_salsa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.canciones_salsa_id_seq;
       public               Comfe_owner    false    277            e           0    0    canciones_salsa_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.canciones_salsa_id_seq OWNED BY public.canciones_salsa.id;
          public               Comfe_owner    false    276            %           1259    1531957    cartasmagicas    TABLE       CREATE TABLE public.cartasmagicas (
    id integer NOT NULL,
    nombre_carta character varying(255) NOT NULL,
    tipo_carta character varying(100),
    poder integer,
    rareza character varying(50),
    descripcion text,
    creador character varying(255)
);
 !   DROP TABLE public.cartasmagicas;
       public         heap r       Comfe_owner    false            $           1259    1531956    cartasmagicas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cartasmagicas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.cartasmagicas_id_seq;
       public               Comfe_owner    false    293            f           0    0    cartasmagicas_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.cartasmagicas_id_seq OWNED BY public.cartasmagicas.id;
          public               Comfe_owner    false    292            �            1259    1433624 
   categorias    TABLE     �   CREATE TABLE public.categorias (
    id_categoria integer NOT NULL,
    nombre_categoria character varying(50) NOT NULL,
    descripcion text
);
    DROP TABLE public.categorias;
       public         heap r       Comfe_owner    false            �            1259    1433623    categorias_id_categoria_seq    SEQUENCE     �   CREATE SEQUENCE public.categorias_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.categorias_id_categoria_seq;
       public               Comfe_owner    false    229            g           0    0    categorias_id_categoria_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.categorias_id_categoria_seq OWNED BY public.categorias.id_categoria;
          public               Comfe_owner    false    228            �            1259    1433601    clientes    TABLE     �  CREATE TABLE public.clientes (
    id_cliente integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellidos character varying(100),
    email character varying(100) NOT NULL,
    telefono character varying(20),
    direccion text,
    ciudad character varying(50),
    pais character varying(50),
    codigo_postal character varying(10),
    fecha_registro timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.clientes;
       public         heap r       Comfe_owner    false            �            1259    1433600    clientes_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public.clientes_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.clientes_id_cliente_seq;
       public               Comfe_owner    false    225            h           0    0    clientes_id_cliente_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.clientes_id_cliente_seq OWNED BY public.clientes.id_cliente;
          public               Comfe_owner    false    224            �            1259    1499157    colores    TABLE     �   CREATE TABLE public.colores (
    id integer NOT NULL,
    nombre_color character varying(50),
    codigo_hex character varying(7)
);
    DROP TABLE public.colores;
       public         heap r       Comfe_owner    false            �            1259    1499156    colores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.colores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.colores_id_seq;
       public               Comfe_owner    false    252            i           0    0    colores_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.colores_id_seq OWNED BY public.colores.id;
          public               Comfe_owner    false    251                       1259    1531922    criaturasmíticas    TABLE     �   CREATE TABLE public."criaturasmíticas" (
    id integer NOT NULL,
    nombre_criatura character varying(100) NOT NULL,
    "año_existencia" integer NOT NULL,
    ubicacion character varying(100) NOT NULL,
    descripcion text NOT NULL
);
 '   DROP TABLE public."criaturasmíticas";
       public         heap r       Comfe_owner    false                       1259    1531921    criaturasmíticas_id_seq    SEQUENCE     �   CREATE SEQUENCE public."criaturasmíticas_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."criaturasmíticas_id_seq";
       public               Comfe_owner    false    285            j           0    0    criaturasmíticas_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."criaturasmíticas_id_seq" OWNED BY public."criaturasmíticas".id;
          public               Comfe_owner    false    284            =           1259    1548289    culturas_precolombinas    TABLE     �   CREATE TABLE public.culturas_precolombinas (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    ubicacion character varying(100) NOT NULL,
    periodo character varying(50) NOT NULL,
    construccion text
);
 *   DROP TABLE public.culturas_precolombinas;
       public         heap r       Comfe_owner    false            <           1259    1548288    culturas_precolombinas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.culturas_precolombinas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.culturas_precolombinas_id_seq;
       public               Comfe_owner    false    317            k           0    0    culturas_precolombinas_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.culturas_precolombinas_id_seq OWNED BY public.culturas_precolombinas.id;
          public               Comfe_owner    false    316            �            1259    1433690    detalles_pedido    TABLE     �   CREATE TABLE public.detalles_pedido (
    id_detalle integer NOT NULL,
    id_pedido integer,
    id_producto integer,
    cantidad integer NOT NULL,
    precio_unitario numeric(10,2) NOT NULL
);
 #   DROP TABLE public.detalles_pedido;
       public         heap r       Comfe_owner    false            �            1259    1433689    detalles_pedido_id_detalle_seq    SEQUENCE     �   CREATE SEQUENCE public.detalles_pedido_id_detalle_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.detalles_pedido_id_detalle_seq;
       public               Comfe_owner    false    238            l           0    0    detalles_pedido_id_detalle_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.detalles_pedido_id_detalle_seq OWNED BY public.detalles_pedido.id_detalle;
          public               Comfe_owner    false    237            �            1259    1433733    devoluciones    TABLE     �   CREATE TABLE public.devoluciones (
    id_devolucion integer NOT NULL,
    id_pedido integer,
    id_producto integer,
    cantidad integer NOT NULL,
    fecha_devolucion timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    motivo text
);
     DROP TABLE public.devoluciones;
       public         heap r       Comfe_owner    false            �            1259    1433732    devoluciones_id_devolucion_seq    SEQUENCE     �   CREATE SEQUENCE public.devoluciones_id_devolucion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.devoluciones_id_devolucion_seq;
       public               Comfe_owner    false    244            m           0    0    devoluciones_id_devolucion_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.devoluciones_id_devolucion_seq OWNED BY public.devoluciones.id_devolucion;
          public               Comfe_owner    false    243            �            1259    1433613 	   empleados    TABLE     �  CREATE TABLE public.empleados (
    id_empleado integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellidos character varying(100),
    email character varying(100) NOT NULL,
    telefono character varying(20),
    direccion text,
    ciudad character varying(50),
    pais character varying(50),
    codigo_postal character varying(10),
    puesto character varying(50),
    salario numeric(10,2),
    fecha_contratacion date
);
    DROP TABLE public.empleados;
       public         heap r       Comfe_owner    false            �            1259    1433612    empleados_id_empleado_seq    SEQUENCE     �   CREATE SEQUENCE public.empleados_id_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.empleados_id_empleado_seq;
       public               Comfe_owner    false    227            n           0    0    empleados_id_empleado_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.empleados_id_empleado_seq OWNED BY public.empleados.id_empleado;
          public               Comfe_owner    false    226            C           1259    1556495    errores_transacciones    TABLE     �   CREATE TABLE public.errores_transacciones (
    order_number integer NOT NULL,
    date date,
    customer_name character varying(50),
    gross_amount numeric,
    error_type character varying(30)
);
 )   DROP TABLE public.errores_transacciones;
       public         heap r       Comfe_owner    false            B           1259    1556494 &   errores_transacciones_order_number_seq    SEQUENCE     �   CREATE SEQUENCE public.errores_transacciones_order_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.errores_transacciones_order_number_seq;
       public               Comfe_owner    false    323            o           0    0 &   errores_transacciones_order_number_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.errores_transacciones_order_number_seq OWNED BY public.errores_transacciones.order_number;
          public               Comfe_owner    false    322                       1259    1531914    especiesenpeligro    TABLE     �   CREATE TABLE public.especiesenpeligro (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    habitat character varying(100) NOT NULL,
    nivel_peligro character varying(50) NOT NULL
);
 %   DROP TABLE public.especiesenpeligro;
       public         heap r       Comfe_owner    false                       1259    1531913    especiesenpeligro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.especiesenpeligro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.especiesenpeligro_id_seq;
       public               Comfe_owner    false    283            p           0    0    especiesenpeligro_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.especiesenpeligro_id_seq OWNED BY public.especiesenpeligro.id;
          public               Comfe_owner    false    282            L           1259    1581068 	   estudents    TABLE     �  CREATE TABLE public.estudents (
    id integer NOT NULL,
    nombres character varying(100) NOT NULL,
    apellidos character varying(100) NOT NULL,
    numero_documento character varying(20) NOT NULL,
    edad integer,
    fecha_nacimiento date,
    sexo character(1),
    CONSTRAINT estudents_edad_check CHECK ((edad >= 0)),
    CONSTRAINT estudents_sexo_check CHECK ((sexo = ANY (ARRAY['M'::bpchar, 'F'::bpchar])))
);
    DROP TABLE public.estudents;
       public         heap r       Comfe_owner    false            K           1259    1581067    estudents_id_seq    SEQUENCE     �   CREATE SEQUENCE public.estudents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.estudents_id_seq;
       public               Comfe_owner    false    332            q           0    0    estudents_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.estudents_id_seq OWNED BY public.estudents.id;
          public               Comfe_owner    false    331            J           1259    1581057    estudiantes    TABLE     �  CREATE TABLE public.estudiantes (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    numero_documento character varying(20) NOT NULL,
    edad integer,
    fecha_nacimiento date NOT NULL,
    sexo character(1) NOT NULL,
    CONSTRAINT estudiantes_edad_check CHECK ((edad >= 0)),
    CONSTRAINT estudiantes_sexo_check CHECK ((sexo = ANY (ARRAY['F'::bpchar, 'M'::bpchar])))
);
    DROP TABLE public.estudiantes;
       public         heap r       Comfe_owner    false            I           1259    1581056    estudiantes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.estudiantes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.estudiantes_id_seq;
       public               Comfe_owner    false    330            r           0    0    estudiantes_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.estudiantes_id_seq OWNED BY public.estudiantes.id;
          public               Comfe_owner    false    329                       1259    1515523    estudiantes_transferidos    TABLE     7  CREATE TABLE public.estudiantes_transferidos (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    edad integer NOT NULL,
    grado character varying(10) NOT NULL,
    escuela_anterior character varying(100) NOT NULL,
    fecha_transferencia date NOT NULL,
    motivo_transferencia text
);
 ,   DROP TABLE public.estudiantes_transferidos;
       public         heap r       Comfe_owner    false                       1259    1515522    estudiantes_transferidos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.estudiantes_transferidos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.estudiantes_transferidos_id_seq;
       public               Comfe_owner    false    275            s           0    0    estudiantes_transferidos_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.estudiantes_transferidos_id_seq OWNED BY public.estudiantes_transferidos.id;
          public               Comfe_owner    false    274                       1259    1523723    estudiantitos    TABLE       CREATE TABLE public.estudiantitos (
    id_estudiante integer NOT NULL,
    nombrecompleto character varying(50) NOT NULL,
    apellidocompleto character varying(50) NOT NULL,
    numero_documento character varying(20) NOT NULL,
    fecha_nacimiento date NOT NULL
);
 !   DROP TABLE public.estudiantitos;
       public         heap r       Comfe_owner    false                       1259    1523722    estudiantitos_id_estudiante_seq    SEQUENCE     �   CREATE SEQUENCE public.estudiantitos_id_estudiante_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.estudiantitos_id_estudiante_seq;
       public               Comfe_owner    false    279            t           0    0    estudiantitos_id_estudiante_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.estudiantitos_id_estudiante_seq OWNED BY public.estudiantitos.id_estudiante;
          public               Comfe_owner    false    278                       1259    1499260    eventos_deportivos    TABLE       CREATE TABLE public.eventos_deportivos (
    id integer NOT NULL,
    nombre_evento character varying(100),
    fecha_evento date,
    equipo_local character varying(50),
    equipo_visitante character varying(50),
    marcador_local integer,
    marcador_visitante integer
);
 &   DROP TABLE public.eventos_deportivos;
       public         heap r       Comfe_owner    false                       1259    1499259    eventos_deportivos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.eventos_deportivos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.eventos_deportivos_id_seq;
       public               Comfe_owner    false    273            u           0    0    eventos_deportivos_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.eventos_deportivos_id_seq OWNED BY public.eventos_deportivos.id;
          public               Comfe_owner    false    272                       1259    1531905    exploradoresespaciales    TABLE       CREATE TABLE public.exploradoresespaciales (
    id integer NOT NULL,
    nombre_nave character varying(100) NOT NULL,
    nombre_astronautas text NOT NULL,
    fecha_viaje date NOT NULL,
    planeta_visita character varying(50) NOT NULL,
    tiempo_viaje interval NOT NULL
);
 *   DROP TABLE public.exploradoresespaciales;
       public         heap r       Comfe_owner    false                       1259    1531904    exploradoresespaciales_id_seq    SEQUENCE     �   CREATE SEQUENCE public.exploradoresespaciales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.exploradoresespaciales_id_seq;
       public               Comfe_owner    false    281            v           0    0    exploradoresespaciales_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.exploradoresespaciales_id_seq OWNED BY public.exploradoresespaciales.id;
          public               Comfe_owner    false    280            -           1259    1531991    festivalesextravagantes    TABLE     �   CREATE TABLE public.festivalesextravagantes (
    id integer NOT NULL,
    nombrefestival character varying(100) NOT NULL,
    pais character varying(50),
    anoedicion integer,
    duraciondias integer,
    descripcion text
);
 +   DROP TABLE public.festivalesextravagantes;
       public         heap r       Comfe_owner    false            ,           1259    1531990    festivalesextravagantes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.festivalesextravagantes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.festivalesextravagantes_id_seq;
       public               Comfe_owner    false    301            w           0    0    festivalesextravagantes_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.festivalesextravagantes_id_seq OWNED BY public.festivalesextravagantes.id;
          public               Comfe_owner    false    300            �            1259    1220774 
   id_sec_cli    SEQUENCE     s   CREATE SEQUENCE public.id_sec_cli
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.id_sec_cli;
       public               Comfe_owner    false            �            1259    1220775    id_sec_compr_cli    SEQUENCE     y   CREATE SEQUENCE public.id_sec_compr_cli
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.id_sec_compr_cli;
       public               Comfe_owner    false            �            1259    1220772    id_sec_empl    SEQUENCE     t   CREATE SEQUENCE public.id_sec_empl
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.id_sec_empl;
       public               Comfe_owner    false            �            1259    1220777    id_sec_fact    SEQUENCE     t   CREATE SEQUENCE public.id_sec_fact
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.id_sec_fact;
       public               Comfe_owner    false            �            1259    1220778    id_sec_fact_det    SEQUENCE     x   CREATE SEQUENCE public.id_sec_fact_det
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.id_sec_fact_det;
       public               Comfe_owner    false            �            1259    1220771    id_sec_produc    SEQUENCE     v   CREATE SEQUENCE public.id_sec_produc
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.id_sec_produc;
       public               Comfe_owner    false            �            1259    1220770    id_sec_provee    SEQUENCE     v   CREATE SEQUENCE public.id_sec_provee
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.id_sec_provee;
       public               Comfe_owner    false            �            1259    1220773    id_sec_vent    SEQUENCE     t   CREATE SEQUENCE public.id_sec_vent
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.id_sec_vent;
       public               Comfe_owner    false            �            1259    1220776    id_sec_vent_prod    SEQUENCE     y   CREATE SEQUENCE public.id_sec_vent_prod
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.id_sec_vent_prod;
       public               Comfe_owner    false            /           1259    1532000    ingredientesexoticos    TABLE     �   CREATE TABLE public.ingredientesexoticos (
    id integer NOT NULL,
    nombreingrediente character varying(100) NOT NULL,
    origen character varying(50),
    usosculinarios character varying(200),
    color character varying(30)
);
 (   DROP TABLE public.ingredientesexoticos;
       public         heap r       Comfe_owner    false            .           1259    1531999    ingredientesexoticos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ingredientesexoticos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.ingredientesexoticos_id_seq;
       public               Comfe_owner    false    303            x           0    0    ingredientesexoticos_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.ingredientesexoticos_id_seq OWNED BY public.ingredientesexoticos.id;
          public               Comfe_owner    false    302            �            1259    1433720 
   inventario    TABLE     �   CREATE TABLE public.inventario (
    id_inventario integer NOT NULL,
    id_producto integer,
    cantidad_disponible integer NOT NULL,
    cantidad_reservada integer DEFAULT 0,
    ubicacion character varying(100)
);
    DROP TABLE public.inventario;
       public         heap r       Comfe_owner    false            �            1259    1433719    inventario_id_inventario_seq    SEQUENCE     �   CREATE SEQUENCE public.inventario_id_inventario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.inventario_id_inventario_seq;
       public               Comfe_owner    false    242            y           0    0    inventario_id_inventario_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.inventario_id_inventario_seq OWNED BY public.inventario.id_inventario;
          public               Comfe_owner    false    241                       1259    1499245    jardines    TABLE     �   CREATE TABLE public.jardines (
    id integer NOT NULL,
    nombre_jardin character varying(50) NOT NULL,
    ubicacion character varying(50) NOT NULL,
    popularidad integer
);
    DROP TABLE public.jardines;
       public         heap r       Comfe_owner    false                       1259    1499244    jardines_id_seq    SEQUENCE     �   CREATE SEQUENCE public.jardines_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.jardines_id_seq;
       public               Comfe_owner    false    269            z           0    0    jardines_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.jardines_id_seq OWNED BY public.jardines.id;
          public               Comfe_owner    false    268            A           1259    1556488    listado_aviones    TABLE       CREATE TABLE public.listado_aviones (
    id integer NOT NULL,
    nombre character varying(60),
    cantidad_motores integer,
    fecha_creacion date,
    empresa_creadora character varying(50),
    es_antiradar boolean,
    cantidad_misiones integer,
    pais character varying(30)
);
 #   DROP TABLE public.listado_aviones;
       public         heap r       Comfe_owner    false            @           1259    1556487    listado_aviones_id_seq    SEQUENCE     �   CREATE SEQUENCE public.listado_aviones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.listado_aviones_id_seq;
       public               Comfe_owner    false    321            {           0    0    listado_aviones_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.listado_aviones_id_seq OWNED BY public.listado_aviones.id;
          public               Comfe_owner    false    320            E           1259    1556504    listado_groserias    TABLE     �   CREATE TABLE public.listado_groserias (
    id integer NOT NULL,
    expresion character varying(50),
    idioma character varying(20),
    significado text,
    epoca character varying(20),
    utilizado_por character varying(20),
    sinonimos text
);
 %   DROP TABLE public.listado_groserias;
       public         heap r       Comfe_owner    false            D           1259    1556503    listado_groserias_id_seq    SEQUENCE     �   CREATE SEQUENCE public.listado_groserias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.listado_groserias_id_seq;
       public               Comfe_owner    false    325            |           0    0    listado_groserias_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.listado_groserias_id_seq OWNED BY public.listado_groserias.id;
          public               Comfe_owner    false    324            	           1259    1499228    mascotas    TABLE     �   CREATE TABLE public.mascotas (
    id integer NOT NULL,
    nombre_mascota character varying(50) NOT NULL,
    tipo_mascota character varying(50) NOT NULL
);
    DROP TABLE public.mascotas;
       public         heap r       Comfe_owner    false                       1259    1499227    mascotas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mascotas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.mascotas_id_seq;
       public               Comfe_owner    false    265            }           0    0    mascotas_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.mascotas_id_seq OWNED BY public.mascotas.id;
          public               Comfe_owner    false    264            ?           1259    1556481    mi_tabla    TABLE     \   CREATE TABLE public.mi_tabla (
    id integer NOT NULL,
    nombre character varying(10)
);
    DROP TABLE public.mi_tabla;
       public         heap r       Comfe_owner    false            >           1259    1556480    mi_tabla_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mi_tabla_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.mi_tabla_id_seq;
       public               Comfe_owner    false    319            ~           0    0    mi_tabla_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.mi_tabla_id_seq OWNED BY public.mi_tabla.id;
          public               Comfe_owner    false    318            )           1259    1531975    misionessecretas    TABLE     �   CREATE TABLE public.misionessecretas (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    ubicacion character varying(100) NOT NULL,
    nivel_secreto character varying(50) NOT NULL,
    descripcion text
);
 $   DROP TABLE public.misionessecretas;
       public         heap r       Comfe_owner    false            (           1259    1531974    misionessecretas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.misionessecretas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.misionessecretas_id_seq;
       public               Comfe_owner    false    297                       0    0    misionessecretas_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.misionessecretas_id_seq OWNED BY public.misionessecretas.id;
          public               Comfe_owner    false    296            3           1259    1532016    museos    TABLE        CREATE TABLE public.museos (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    ciudad character varying(50),
    arquitecturadestacada character varying(100),
    anoinauguracion integer,
    horarioatencion character varying(50)
);
    DROP TABLE public.museos;
       public         heap r       Comfe_owner    false            2           1259    1532015    museos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.museos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.museos_id_seq;
       public               Comfe_owner    false    307            �           0    0    museos_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.museos_id_seq OWNED BY public.museos.id;
          public               Comfe_owner    false    306            1           1259    1532007    obrasdearte    TABLE     �   CREATE TABLE public.obrasdearte (
    id integer NOT NULL,
    titulo character varying(100) NOT NULL,
    artista character varying(100),
    epocahistorica character varying(50),
    tecnica character varying(50),
    valorestimado numeric
);
    DROP TABLE public.obrasdearte;
       public         heap r       Comfe_owner    false            0           1259    1532006    obrasdearte_id_seq    SEQUENCE     �   CREATE SEQUENCE public.obrasdearte_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.obrasdearte_id_seq;
       public               Comfe_owner    false    305            �           0    0    obrasdearte_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.obrasdearte_id_seq OWNED BY public.obrasdearte.id;
          public               Comfe_owner    false    304            �            1259    1433707    pagos    TABLE     �   CREATE TABLE public.pagos (
    id_pago integer NOT NULL,
    id_pedido integer,
    fecha_pago timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    monto numeric(10,2) NOT NULL,
    metodo_pago character varying(50) NOT NULL
);
    DROP TABLE public.pagos;
       public         heap r       Comfe_owner    false            �            1259    1433706    pagos_id_pago_seq    SEQUENCE     �   CREATE SEQUENCE public.pagos_id_pago_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.pagos_id_pago_seq;
       public               Comfe_owner    false    240            �           0    0    pagos_id_pago_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.pagos_id_pago_seq OWNED BY public.pagos.id_pago;
          public               Comfe_owner    false    239            7           1259    1532030    patrimoniosculturales    TABLE       CREATE TABLE public.patrimoniosculturales (
    id integer NOT NULL,
    nombrepatrimonio character varying(100) NOT NULL,
    tipo character varying(50),
    pais character varying(50),
    anodeclaracion integer,
    estadoconservacion character varying(50)
);
 )   DROP TABLE public.patrimoniosculturales;
       public         heap r       Comfe_owner    false            6           1259    1532029    patrimoniosculturales_id_seq    SEQUENCE     �   CREATE SEQUENCE public.patrimoniosculturales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.patrimoniosculturales_id_seq;
       public               Comfe_owner    false    311            �           0    0    patrimoniosculturales_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.patrimoniosculturales_id_seq OWNED BY public.patrimoniosculturales.id;
          public               Comfe_owner    false    310            �            1259    1433672    pedidos    TABLE       CREATE TABLE public.pedidos (
    id_pedido integer NOT NULL,
    id_cliente integer,
    id_empleado integer,
    fecha_pedido timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    estado character varying(50) NOT NULL,
    total numeric(10,2) NOT NULL
);
    DROP TABLE public.pedidos;
       public         heap r       Comfe_owner    false            �            1259    1433671    pedidos_id_pedido_seq    SEQUENCE     �   CREATE SEQUENCE public.pedidos_id_pedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.pedidos_id_pedido_seq;
       public               Comfe_owner    false    236            �           0    0    pedidos_id_pedido_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.pedidos_id_pedido_seq OWNED BY public.pedidos.id_pedido;
          public               Comfe_owner    false    235                       1259    1499206 	   peliculas    TABLE     @  CREATE TABLE public.peliculas (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    descripcion text,
    tipo character varying(50),
    clasificacion_edad character varying(50),
    fecha_estreno date,
    CONSTRAINT peliculas_clasificacion_edad_check CHECK (((clasificacion_edad)::text = ANY ((ARRAY['todos'::character varying, '7+'::character varying, '12+'::character varying, '16+'::character varying, '18+'::character varying])::text[]))),
    CONSTRAINT peliculas_tipo_check CHECK (((tipo)::text = ANY ((ARRAY['terror'::character varying, 'drama'::character varying, 'suspenso'::character varying, 'accion'::character varying, 'comedia'::character varying, 'romance'::character varying, 'ciencia_ficcion'::character varying, 'aventura'::character varying, 'animacion'::character varying])::text[])))
);
    DROP TABLE public.peliculas;
       public         heap r       Comfe_owner    false                       1259    1499205    peliculas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.peliculas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.peliculas_id_seq;
       public               Comfe_owner    false    261            �           0    0    peliculas_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.peliculas_id_seq OWNED BY public.peliculas.id;
          public               Comfe_owner    false    260            '           1259    1531966    planetasdesconocidos    TABLE       CREATE TABLE public.planetasdesconocidos (
    id integer NOT NULL,
    nombre_planeta character varying(255) NOT NULL,
    galaxia character varying(255),
    distancia_tierra numeric(15,2),
    habitabilidad boolean,
    descripcion text,
    descubridor character varying(255)
);
 (   DROP TABLE public.planetasdesconocidos;
       public         heap r       Comfe_owner    false            &           1259    1531965    planetasdesconocidos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.planetasdesconocidos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.planetasdesconocidos_id_seq;
       public               Comfe_owner    false    295            �           0    0    planetasdesconocidos_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.planetasdesconocidos_id_seq OWNED BY public.planetasdesconocidos.id;
          public               Comfe_owner    false    294            �            1259    1433633 	   productos    TABLE       CREATE TABLE public.productos (
    id_producto integer NOT NULL,
    nombre_producto character varying(100) NOT NULL,
    descripcion text,
    precio numeric(10,2) NOT NULL,
    id_categoria integer,
    fecha_agregado timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.productos;
       public         heap r       Comfe_owner    false            �            1259    1490945 
   productos2    TABLE     �   CREATE TABLE public.productos2 (
    id integer NOT NULL,
    precio numeric(10,2) NOT NULL,
    total_con_impuesto numeric(10,2) GENERATED ALWAYS AS ((precio * 1.19)) STORED
);
    DROP TABLE public.productos2;
       public         heap r       Comfe_owner    false            �            1259    1490944    productos2_id_seq    SEQUENCE     �   CREATE SEQUENCE public.productos2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.productos2_id_seq;
       public               Comfe_owner    false    246            �           0    0    productos2_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.productos2_id_seq OWNED BY public.productos2.id;
          public               Comfe_owner    false    245            �            1259    1433632    productos_id_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.productos_id_producto_seq;
       public               Comfe_owner    false    231            �           0    0    productos_id_producto_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.productos_id_producto_seq OWNED BY public.productos.id_producto;
          public               Comfe_owner    false    230            �            1259    1433656    productos_proveedores    TABLE     s   CREATE TABLE public.productos_proveedores (
    id_producto integer NOT NULL,
    id_proveedor integer NOT NULL
);
 )   DROP TABLE public.productos_proveedores;
       public         heap r       Comfe_owner    false            �            1259    1433648    proveedores    TABLE     g  CREATE TABLE public.proveedores (
    id_proveedor integer NOT NULL,
    nombre_proveedor character varying(100) NOT NULL,
    contacto character varying(100),
    telefono character varying(20),
    direccion text,
    ciudad character varying(50),
    pais character varying(50),
    codigo_postal character varying(10),
    email character varying(100)
);
    DROP TABLE public.proveedores;
       public         heap r       Comfe_owner    false            �            1259    1433647    proveedores_id_proveedor_seq    SEQUENCE     �   CREATE SEQUENCE public.proveedores_id_proveedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.proveedores_id_proveedor_seq;
       public               Comfe_owner    false    233            �           0    0    proveedores_id_proveedor_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.proveedores_id_proveedor_seq OWNED BY public.proveedores.id_proveedor;
          public               Comfe_owner    false    232                       1259    1499252 	   proyectos    TABLE     �   CREATE TABLE public.proyectos (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    descripcion character varying(150),
    fecha_creacion timestamp without time zone
);
    DROP TABLE public.proyectos;
       public         heap r       Comfe_owner    false                       1259    1499251    proyectos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.proyectos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.proyectos_id_seq;
       public               Comfe_owner    false    271            �           0    0    proyectos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.proyectos_id_seq OWNED BY public.proyectos.id;
          public               Comfe_owner    false    270            :           1259    1540097    prueba    TABLE     Z   CREATE TABLE public.prueba (
    nombre character varying(20),
    id integer NOT NULL
);
    DROP TABLE public.prueba;
       public         heap r       Comfe_owner    false            H           1259    1572866 	   prueba_id    TABLE     ~   CREATE TABLE public.prueba_id (
    id integer NOT NULL,
    nombre character varying(30),
    color character varying(30)
);
    DROP TABLE public.prueba_id;
       public         heap r       Comfe_owner    false            ;           1259    1540102    prueba_id_seq    SEQUENCE     �   CREATE SEQUENCE public.prueba_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.prueba_id_seq;
       public               Comfe_owner    false    314            �           0    0    prueba_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.prueba_id_seq OWNED BY public.prueba.id;
          public               Comfe_owner    false    315            �            1259    1499139    raza_de_perro    TABLE     a   CREATE TABLE public.raza_de_perro (
    id integer NOT NULL,
    nombre character varying(30)
);
 !   DROP TABLE public.raza_de_perro;
       public         heap r       Comfe_owner    false            �            1259    1499147    raza_de_perro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.raza_de_perro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.raza_de_perro_id_seq;
       public               Comfe_owner    false    248            �           0    0    raza_de_perro_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.raza_de_perro_id_seq OWNED BY public.raza_de_perro.id;
          public               Comfe_owner    false    250                       1259    1499235    recetas    TABLE       CREATE TABLE public.recetas (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    descripcion text,
    tipo character varying(50),
    tiempo_coccion_estimado integer,
    CONSTRAINT recetas_tipo_check CHECK (((tipo)::text = ANY ((ARRAY['vegetariana'::character varying, 'vegana'::character varying, 'carnes'::character varying, 'pescado'::character varying, 'pollo'::character varying, 'arepas'::character varying, 'sopas'::character varying, 'antojitos'::character varying])::text[])))
);
    DROP TABLE public.recetas;
       public         heap r       Comfe_owner    false            
           1259    1499234    recetas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.recetas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.recetas_id_seq;
       public               Comfe_owner    false    267            �           0    0    recetas_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.recetas_id_seq OWNED BY public.recetas.id;
          public               Comfe_owner    false    266            #           1259    1531948    recetasalquímicas    TABLE     �   CREATE TABLE public."recetasalquímicas" (
    id integer NOT NULL,
    nombre_receta character varying(100) NOT NULL,
    ingredientes text NOT NULL,
    preparacion text NOT NULL,
    beneficios text NOT NULL
);
 (   DROP TABLE public."recetasalquímicas";
       public         heap r       Comfe_owner    false            "           1259    1531947    recetasalquímicas_id_seq    SEQUENCE     �   CREATE SEQUENCE public."recetasalquímicas_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."recetasalquímicas_id_seq";
       public               Comfe_owner    false    291            �           0    0    recetasalquímicas_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."recetasalquímicas_id_seq" OWNED BY public."recetasalquímicas".id;
          public               Comfe_owner    false    290            �            1259    1499182    restaurantes    TABLE     1  CREATE TABLE public.restaurantes (
    "idRestaurante" integer NOT NULL,
    nombre character varying(100) NOT NULL,
    direccion character varying(150) NOT NULL,
    especialidad character varying(100) NOT NULL,
    horario character varying(50) NOT NULL,
    telefono character varying(15) NOT NULL
);
     DROP TABLE public.restaurantes;
       public         heap r       Comfe_owner    false            �            1259    1499181    restaurantes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.restaurantes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.restaurantes_id_seq;
       public               Comfe_owner    false    254            �           0    0    restaurantes_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public.restaurantes_id_seq OWNED BY public.restaurantes."idRestaurante";
          public               Comfe_owner    false    253                       1259    1531931    ruinasantiguas    TABLE     R  CREATE TABLE public.ruinasantiguas (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    ubicacion character varying(100) NOT NULL,
    epoca character varying(50) NOT NULL,
    estado_conservacion character varying(50) NOT NULL,
    descripcion text,
    fecha_descubrimiento date,
    importancia_historica text
);
 "   DROP TABLE public.ruinasantiguas;
       public         heap r       Comfe_owner    false                       1259    1531930    ruinasantiguas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ruinasantiguas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.ruinasantiguas_id_seq;
       public               Comfe_owner    false    287            �           0    0    ruinasantiguas_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.ruinasantiguas_id_seq OWNED BY public.ruinasantiguas.id;
          public               Comfe_owner    false    286            F           1259    1564673 
   sin_indice    TABLE     �   CREATE TABLE public.sin_indice (
    nombre character varying(50),
    apellido character varying(50),
    id integer NOT NULL,
    edad integer
);
    DROP TABLE public.sin_indice;
       public         heap r       Comfe_owner    false            �           0    0    TABLE sin_indice    COMMENT     :   COMMENT ON TABLE public.sin_indice IS 'tabla sin indice';
          public               Comfe_owner    false    326            G           1259    1564676    sin_indice_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sin_indice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.sin_indice_id_seq;
       public               Comfe_owner    false    326            �           0    0    sin_indice_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.sin_indice_id_seq OWNED BY public.sin_indice.id;
          public               Comfe_owner    false    327            9           1259    1532038    tablita    TABLE     l   CREATE TABLE public.tablita (
    id integer NOT NULL,
    nombre character(10),
    color character(10)
);
    DROP TABLE public.tablita;
       public         heap r       Comfe_owner    false            8           1259    1532037    tablita_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tablita_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tablita_id_seq;
       public               Comfe_owner    false    313            �           0    0    tablita_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tablita_id_seq OWNED BY public.tablita.id;
          public               Comfe_owner    false    312            5           1259    1532023    talleresculturales    TABLE       CREATE TABLE public.talleresculturales (
    id integer NOT NULL,
    nombretaller character varying(100) NOT NULL,
    tipoarte character varying(50),
    duracionhoras integer,
    materialesrequeridos character varying(200),
    niveldificultad character varying(30)
);
 &   DROP TABLE public.talleresculturales;
       public         heap r       Comfe_owner    false            4           1259    1532022    talleresculturales_id_seq    SEQUENCE     �   CREATE SEQUENCE public.talleresculturales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.talleresculturales_id_seq;
       public               Comfe_owner    false    309            �           0    0    talleresculturales_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.talleresculturales_id_seq OWNED BY public.talleresculturales.id;
          public               Comfe_owner    false    308                       1259    1499192    tecnologias    TABLE     �   CREATE TABLE public.tecnologias (
    id integer NOT NULL,
    tecnologia character varying(50) NOT NULL,
    area character varying(50) NOT NULL,
    porcentaje_uso numeric(5,2)
);
    DROP TABLE public.tecnologias;
       public         heap r       Comfe_owner    false                        1259    1499191    tecnologias_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tecnologias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tecnologias_id_seq;
       public               Comfe_owner    false    257            �           0    0    tecnologias_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tecnologias_id_seq OWNED BY public.tecnologias.id;
          public               Comfe_owner    false    256            !           1259    1531940    tesorosperdidos    TABLE     �   CREATE TABLE public.tesorosperdidos (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    ubicacion character varying(100),
    ano_descubrimiento integer,
    estado_actual character varying(50)
);
 #   DROP TABLE public.tesorosperdidos;
       public         heap r       Comfe_owner    false                        1259    1531939    tesorosperdidos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tesorosperdidos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tesorosperdidos_id_seq;
       public               Comfe_owner    false    289            �           0    0    tesorosperdidos_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tesorosperdidos_id_seq OWNED BY public.tesorosperdidos.id;
          public               Comfe_owner    false    288                       1259    1499217    viajes    TABLE     �   CREATE TABLE public.viajes (
    id integer NOT NULL,
    ciudad character varying(50),
    continente character varying(50),
    temporada character varying(20)
);
    DROP TABLE public.viajes;
       public         heap r       Comfe_owner    false            �            1259    1499188    viajes     TABLE     #   CREATE TABLE public."viajes " (
);
    DROP TABLE public."viajes ";
       public         heap r       Comfe_owner    false            �           0    0    TABLE "viajes "    COMMENT     0   COMMENT ON TABLE public."viajes " IS 'grupo 1';
          public               Comfe_owner    false    255                       1259    1499216    viajes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.viajes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.viajes_id_seq;
       public               Comfe_owner    false    263            �           0    0    viajes_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.viajes_id_seq OWNED BY public.viajes.id;
          public               Comfe_owner    false    262            �           2604    1499143    animales id    DEFAULT     j   ALTER TABLE ONLY public.animales ALTER COLUMN id SET DEFAULT nextval('public.animales_id_seq'::regclass);
 :   ALTER TABLE public.animales ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    249    247            �           2604    1499202    artistas id    DEFAULT     j   ALTER TABLE ONLY public.artistas ALTER COLUMN id SET DEFAULT nextval('public.artistas_id_seq'::regclass);
 :   ALTER TABLE public.artistas ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    259    258    259            �           2604    1531987    artistascallejeros id    DEFAULT     ~   ALTER TABLE ONLY public.artistascallejeros ALTER COLUMN id SET DEFAULT nextval('public.artistascallejeros_id_seq'::regclass);
 D   ALTER TABLE public.artistascallejeros ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    298    299    299            �           2604    1523716    canciones_salsa id    DEFAULT     x   ALTER TABLE ONLY public.canciones_salsa ALTER COLUMN id SET DEFAULT nextval('public.canciones_salsa_id_seq'::regclass);
 A   ALTER TABLE public.canciones_salsa ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    276    277    277            �           2604    1531960    cartasmagicas id    DEFAULT     t   ALTER TABLE ONLY public.cartasmagicas ALTER COLUMN id SET DEFAULT nextval('public.cartasmagicas_id_seq'::regclass);
 ?   ALTER TABLE public.cartasmagicas ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    292    293    293            �           2604    1433627    categorias id_categoria    DEFAULT     �   ALTER TABLE ONLY public.categorias ALTER COLUMN id_categoria SET DEFAULT nextval('public.categorias_id_categoria_seq'::regclass);
 F   ALTER TABLE public.categorias ALTER COLUMN id_categoria DROP DEFAULT;
       public               Comfe_owner    false    229    228    229            �           2604    1433604    clientes id_cliente    DEFAULT     z   ALTER TABLE ONLY public.clientes ALTER COLUMN id_cliente SET DEFAULT nextval('public.clientes_id_cliente_seq'::regclass);
 B   ALTER TABLE public.clientes ALTER COLUMN id_cliente DROP DEFAULT;
       public               Comfe_owner    false    224    225    225            �           2604    1499160 
   colores id    DEFAULT     h   ALTER TABLE ONLY public.colores ALTER COLUMN id SET DEFAULT nextval('public.colores_id_seq'::regclass);
 9   ALTER TABLE public.colores ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    252    251    252            �           2604    1531925    criaturasmíticas id    DEFAULT     �   ALTER TABLE ONLY public."criaturasmíticas" ALTER COLUMN id SET DEFAULT nextval('public."criaturasmíticas_id_seq"'::regclass);
 E   ALTER TABLE public."criaturasmíticas" ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    285    284    285            �           2604    1548292    culturas_precolombinas id    DEFAULT     �   ALTER TABLE ONLY public.culturas_precolombinas ALTER COLUMN id SET DEFAULT nextval('public.culturas_precolombinas_id_seq'::regclass);
 H   ALTER TABLE public.culturas_precolombinas ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    316    317    317            �           2604    1433693    detalles_pedido id_detalle    DEFAULT     �   ALTER TABLE ONLY public.detalles_pedido ALTER COLUMN id_detalle SET DEFAULT nextval('public.detalles_pedido_id_detalle_seq'::regclass);
 I   ALTER TABLE public.detalles_pedido ALTER COLUMN id_detalle DROP DEFAULT;
       public               Comfe_owner    false    238    237    238            �           2604    1433736    devoluciones id_devolucion    DEFAULT     �   ALTER TABLE ONLY public.devoluciones ALTER COLUMN id_devolucion SET DEFAULT nextval('public.devoluciones_id_devolucion_seq'::regclass);
 I   ALTER TABLE public.devoluciones ALTER COLUMN id_devolucion DROP DEFAULT;
       public               Comfe_owner    false    244    243    244            �           2604    1433616    empleados id_empleado    DEFAULT     ~   ALTER TABLE ONLY public.empleados ALTER COLUMN id_empleado SET DEFAULT nextval('public.empleados_id_empleado_seq'::regclass);
 D   ALTER TABLE public.empleados ALTER COLUMN id_empleado DROP DEFAULT;
       public               Comfe_owner    false    227    226    227            �           2604    1556498 "   errores_transacciones order_number    DEFAULT     �   ALTER TABLE ONLY public.errores_transacciones ALTER COLUMN order_number SET DEFAULT nextval('public.errores_transacciones_order_number_seq'::regclass);
 Q   ALTER TABLE public.errores_transacciones ALTER COLUMN order_number DROP DEFAULT;
       public               Comfe_owner    false    323    322    323            �           2604    1531917    especiesenpeligro id    DEFAULT     |   ALTER TABLE ONLY public.especiesenpeligro ALTER COLUMN id SET DEFAULT nextval('public.especiesenpeligro_id_seq'::regclass);
 C   ALTER TABLE public.especiesenpeligro ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    282    283    283            �           2604    1581071    estudents id    DEFAULT     l   ALTER TABLE ONLY public.estudents ALTER COLUMN id SET DEFAULT nextval('public.estudents_id_seq'::regclass);
 ;   ALTER TABLE public.estudents ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    331    332    332            �           2604    1581060    estudiantes id    DEFAULT     p   ALTER TABLE ONLY public.estudiantes ALTER COLUMN id SET DEFAULT nextval('public.estudiantes_id_seq'::regclass);
 =   ALTER TABLE public.estudiantes ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    329    330    330            �           2604    1515526    estudiantes_transferidos id    DEFAULT     �   ALTER TABLE ONLY public.estudiantes_transferidos ALTER COLUMN id SET DEFAULT nextval('public.estudiantes_transferidos_id_seq'::regclass);
 J   ALTER TABLE public.estudiantes_transferidos ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    275    274    275            �           2604    1523726    estudiantitos id_estudiante    DEFAULT     �   ALTER TABLE ONLY public.estudiantitos ALTER COLUMN id_estudiante SET DEFAULT nextval('public.estudiantitos_id_estudiante_seq'::regclass);
 J   ALTER TABLE public.estudiantitos ALTER COLUMN id_estudiante DROP DEFAULT;
       public               Comfe_owner    false    279    278    279            �           2604    1499263    eventos_deportivos id    DEFAULT     ~   ALTER TABLE ONLY public.eventos_deportivos ALTER COLUMN id SET DEFAULT nextval('public.eventos_deportivos_id_seq'::regclass);
 D   ALTER TABLE public.eventos_deportivos ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    272    273    273            �           2604    1531908    exploradoresespaciales id    DEFAULT     �   ALTER TABLE ONLY public.exploradoresespaciales ALTER COLUMN id SET DEFAULT nextval('public.exploradoresespaciales_id_seq'::regclass);
 H   ALTER TABLE public.exploradoresespaciales ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    281    280    281            �           2604    1531994    festivalesextravagantes id    DEFAULT     �   ALTER TABLE ONLY public.festivalesextravagantes ALTER COLUMN id SET DEFAULT nextval('public.festivalesextravagantes_id_seq'::regclass);
 I   ALTER TABLE public.festivalesextravagantes ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    301    300    301            �           2604    1532003    ingredientesexoticos id    DEFAULT     �   ALTER TABLE ONLY public.ingredientesexoticos ALTER COLUMN id SET DEFAULT nextval('public.ingredientesexoticos_id_seq'::regclass);
 F   ALTER TABLE public.ingredientesexoticos ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    302    303    303            �           2604    1433723    inventario id_inventario    DEFAULT     �   ALTER TABLE ONLY public.inventario ALTER COLUMN id_inventario SET DEFAULT nextval('public.inventario_id_inventario_seq'::regclass);
 G   ALTER TABLE public.inventario ALTER COLUMN id_inventario DROP DEFAULT;
       public               Comfe_owner    false    242    241    242            �           2604    1499248    jardines id    DEFAULT     j   ALTER TABLE ONLY public.jardines ALTER COLUMN id SET DEFAULT nextval('public.jardines_id_seq'::regclass);
 :   ALTER TABLE public.jardines ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    269    268    269            �           2604    1556491    listado_aviones id    DEFAULT     x   ALTER TABLE ONLY public.listado_aviones ALTER COLUMN id SET DEFAULT nextval('public.listado_aviones_id_seq'::regclass);
 A   ALTER TABLE public.listado_aviones ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    321    320    321            �           2604    1556507    listado_groserias id    DEFAULT     |   ALTER TABLE ONLY public.listado_groserias ALTER COLUMN id SET DEFAULT nextval('public.listado_groserias_id_seq'::regclass);
 C   ALTER TABLE public.listado_groserias ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    324    325    325            �           2604    1499231    mascotas id    DEFAULT     j   ALTER TABLE ONLY public.mascotas ALTER COLUMN id SET DEFAULT nextval('public.mascotas_id_seq'::regclass);
 :   ALTER TABLE public.mascotas ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    264    265    265            �           2604    1556484    mi_tabla id    DEFAULT     j   ALTER TABLE ONLY public.mi_tabla ALTER COLUMN id SET DEFAULT nextval('public.mi_tabla_id_seq'::regclass);
 :   ALTER TABLE public.mi_tabla ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    318    319    319            �           2604    1531978    misionessecretas id    DEFAULT     z   ALTER TABLE ONLY public.misionessecretas ALTER COLUMN id SET DEFAULT nextval('public.misionessecretas_id_seq'::regclass);
 B   ALTER TABLE public.misionessecretas ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    297    296    297            �           2604    1532019 	   museos id    DEFAULT     f   ALTER TABLE ONLY public.museos ALTER COLUMN id SET DEFAULT nextval('public.museos_id_seq'::regclass);
 8   ALTER TABLE public.museos ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    307    306    307            �           2604    1532010    obrasdearte id    DEFAULT     p   ALTER TABLE ONLY public.obrasdearte ALTER COLUMN id SET DEFAULT nextval('public.obrasdearte_id_seq'::regclass);
 =   ALTER TABLE public.obrasdearte ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    304    305    305            �           2604    1433710    pagos id_pago    DEFAULT     n   ALTER TABLE ONLY public.pagos ALTER COLUMN id_pago SET DEFAULT nextval('public.pagos_id_pago_seq'::regclass);
 <   ALTER TABLE public.pagos ALTER COLUMN id_pago DROP DEFAULT;
       public               Comfe_owner    false    239    240    240            �           2604    1532033    patrimoniosculturales id    DEFAULT     �   ALTER TABLE ONLY public.patrimoniosculturales ALTER COLUMN id SET DEFAULT nextval('public.patrimoniosculturales_id_seq'::regclass);
 G   ALTER TABLE public.patrimoniosculturales ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    311    310    311            �           2604    1433675    pedidos id_pedido    DEFAULT     v   ALTER TABLE ONLY public.pedidos ALTER COLUMN id_pedido SET DEFAULT nextval('public.pedidos_id_pedido_seq'::regclass);
 @   ALTER TABLE public.pedidos ALTER COLUMN id_pedido DROP DEFAULT;
       public               Comfe_owner    false    235    236    236            �           2604    1499209    peliculas id    DEFAULT     l   ALTER TABLE ONLY public.peliculas ALTER COLUMN id SET DEFAULT nextval('public.peliculas_id_seq'::regclass);
 ;   ALTER TABLE public.peliculas ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    261    260    261            �           2604    1531969    planetasdesconocidos id    DEFAULT     �   ALTER TABLE ONLY public.planetasdesconocidos ALTER COLUMN id SET DEFAULT nextval('public.planetasdesconocidos_id_seq'::regclass);
 F   ALTER TABLE public.planetasdesconocidos ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    295    294    295            �           2604    1433636    productos id_producto    DEFAULT     ~   ALTER TABLE ONLY public.productos ALTER COLUMN id_producto SET DEFAULT nextval('public.productos_id_producto_seq'::regclass);
 D   ALTER TABLE public.productos ALTER COLUMN id_producto DROP DEFAULT;
       public               Comfe_owner    false    230    231    231            �           2604    1490948    productos2 id    DEFAULT     n   ALTER TABLE ONLY public.productos2 ALTER COLUMN id SET DEFAULT nextval('public.productos2_id_seq'::regclass);
 <   ALTER TABLE public.productos2 ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    246    245    246            �           2604    1433651    proveedores id_proveedor    DEFAULT     �   ALTER TABLE ONLY public.proveedores ALTER COLUMN id_proveedor SET DEFAULT nextval('public.proveedores_id_proveedor_seq'::regclass);
 G   ALTER TABLE public.proveedores ALTER COLUMN id_proveedor DROP DEFAULT;
       public               Comfe_owner    false    233    232    233            �           2604    1499255    proyectos id    DEFAULT     l   ALTER TABLE ONLY public.proyectos ALTER COLUMN id SET DEFAULT nextval('public.proyectos_id_seq'::regclass);
 ;   ALTER TABLE public.proyectos ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    270    271    271            �           2604    1540103 	   prueba id    DEFAULT     f   ALTER TABLE ONLY public.prueba ALTER COLUMN id SET DEFAULT nextval('public.prueba_id_seq'::regclass);
 8   ALTER TABLE public.prueba ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    315    314            �           2604    1499148    raza_de_perro id    DEFAULT     t   ALTER TABLE ONLY public.raza_de_perro ALTER COLUMN id SET DEFAULT nextval('public.raza_de_perro_id_seq'::regclass);
 ?   ALTER TABLE public.raza_de_perro ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    250    248            �           2604    1499238 
   recetas id    DEFAULT     h   ALTER TABLE ONLY public.recetas ALTER COLUMN id SET DEFAULT nextval('public.recetas_id_seq'::regclass);
 9   ALTER TABLE public.recetas ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    267    266    267            �           2604    1531951    recetasalquímicas id    DEFAULT     �   ALTER TABLE ONLY public."recetasalquímicas" ALTER COLUMN id SET DEFAULT nextval('public."recetasalquímicas_id_seq"'::regclass);
 F   ALTER TABLE public."recetasalquímicas" ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    291    290    291            �           2604    1499185    restaurantes idRestaurante    DEFAULT        ALTER TABLE ONLY public.restaurantes ALTER COLUMN "idRestaurante" SET DEFAULT nextval('public.restaurantes_id_seq'::regclass);
 K   ALTER TABLE public.restaurantes ALTER COLUMN "idRestaurante" DROP DEFAULT;
       public               Comfe_owner    false    254    253    254            �           2604    1531934    ruinasantiguas id    DEFAULT     v   ALTER TABLE ONLY public.ruinasantiguas ALTER COLUMN id SET DEFAULT nextval('public.ruinasantiguas_id_seq'::regclass);
 @   ALTER TABLE public.ruinasantiguas ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    287    286    287            �           2604    1564677    sin_indice id    DEFAULT     n   ALTER TABLE ONLY public.sin_indice ALTER COLUMN id SET DEFAULT nextval('public.sin_indice_id_seq'::regclass);
 <   ALTER TABLE public.sin_indice ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    327    326            �           2604    1532041 
   tablita id    DEFAULT     h   ALTER TABLE ONLY public.tablita ALTER COLUMN id SET DEFAULT nextval('public.tablita_id_seq'::regclass);
 9   ALTER TABLE public.tablita ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    313    312    313            �           2604    1532026    talleresculturales id    DEFAULT     ~   ALTER TABLE ONLY public.talleresculturales ALTER COLUMN id SET DEFAULT nextval('public.talleresculturales_id_seq'::regclass);
 D   ALTER TABLE public.talleresculturales ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    308    309    309            �           2604    1499195    tecnologias id    DEFAULT     p   ALTER TABLE ONLY public.tecnologias ALTER COLUMN id SET DEFAULT nextval('public.tecnologias_id_seq'::regclass);
 =   ALTER TABLE public.tecnologias ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    257    256    257            �           2604    1531943    tesorosperdidos id    DEFAULT     x   ALTER TABLE ONLY public.tesorosperdidos ALTER COLUMN id SET DEFAULT nextval('public.tesorosperdidos_id_seq'::regclass);
 A   ALTER TABLE public.tesorosperdidos ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    288    289    289            �           2604    1499220 	   viajes id    DEFAULT     f   ALTER TABLE ONLY public.viajes ALTER COLUMN id SET DEFAULT nextval('public.viajes_id_seq'::regclass);
 8   ALTER TABLE public.viajes ALTER COLUMN id DROP DEFAULT;
       public               Comfe_owner    false    262    263    263                      0    1499136    animales 
   TABLE DATA           4   COPY public.animales (id, nombre, edad) FROM stdin;
    public               Comfe_owner    false    247   p                0    1499199    artistas 
   TABLE DATA           f   COPY public.artistas (id, nombre, genero, nacionalidad, fecha_nacimiento, numero_albumes) FROM stdin;
    public               Comfe_owner    false    259   �      9          0    1531984    artistascallejeros 
   TABLE DATA           d   COPY public.artistascallejeros (id, nombre, estiloartistico, ciudad, fechapresentacion) FROM stdin;
    public               Comfe_owner    false    299   �      #          0    1523713    canciones_salsa 
   TABLE DATA           f   COPY public.canciones_salsa (id, nombre_cancion, autor, orquesta, ano_publicacion, album) FROM stdin;
    public               Comfe_owner    false    277   �      3          0    1531957    cartasmagicas 
   TABLE DATA           j   COPY public.cartasmagicas (id, nombre_carta, tipo_carta, poder, rareza, descripcion, creador) FROM stdin;
    public               Comfe_owner    false    293   \      �          0    1433624 
   categorias 
   TABLE DATA           Q   COPY public.categorias (id_categoria, nombre_categoria, descripcion) FROM stdin;
    public               Comfe_owner    false    229   y      �          0    1433601    clientes 
   TABLE DATA           �   COPY public.clientes (id_cliente, nombre, apellidos, email, telefono, direccion, ciudad, pais, codigo_postal, fecha_registro) FROM stdin;
    public               Comfe_owner    false    225   6      
          0    1499157    colores 
   TABLE DATA           ?   COPY public.colores (id, nombre_color, codigo_hex) FROM stdin;
    public               Comfe_owner    false    252   �      +          0    1531922    criaturasmíticas 
   TABLE DATA           m   COPY public."criaturasmíticas" (id, nombre_criatura, "año_existencia", ubicacion, descripcion) FROM stdin;
    public               Comfe_owner    false    285   �      K          0    1548289    culturas_precolombinas 
   TABLE DATA           ^   COPY public.culturas_precolombinas (id, nombre, ubicacion, periodo, construccion) FROM stdin;
    public               Comfe_owner    false    317   �      �          0    1433690    detalles_pedido 
   TABLE DATA           h   COPY public.detalles_pedido (id_detalle, id_pedido, id_producto, cantidad, precio_unitario) FROM stdin;
    public               Comfe_owner    false    238   �                0    1433733    devoluciones 
   TABLE DATA           q   COPY public.devoluciones (id_devolucion, id_pedido, id_producto, cantidad, fecha_devolucion, motivo) FROM stdin;
    public               Comfe_owner    false    244   H      �          0    1433613 	   empleados 
   TABLE DATA           �   COPY public.empleados (id_empleado, nombre, apellidos, email, telefono, direccion, ciudad, pais, codigo_postal, puesto, salario, fecha_contratacion) FROM stdin;
    public               Comfe_owner    false    227   |      Q          0    1556495    errores_transacciones 
   TABLE DATA           l   COPY public.errores_transacciones (order_number, date, customer_name, gross_amount, error_type) FROM stdin;
    public               Comfe_owner    false    323   %!      )          0    1531914    especiesenpeligro 
   TABLE DATA           O   COPY public.especiesenpeligro (id, nombre, habitat, nivel_peligro) FROM stdin;
    public               Comfe_owner    false    283   B!      Z          0    1581068 	   estudents 
   TABLE DATA           k   COPY public.estudents (id, nombres, apellidos, numero_documento, edad, fecha_nacimiento, sexo) FROM stdin;
    public               Comfe_owner    false    332   _!      X          0    1581057    estudiantes 
   TABLE DATA           k   COPY public.estudiantes (id, nombre, apellido, numero_documento, edad, fecha_nacimiento, sexo) FROM stdin;
    public               Comfe_owner    false    330   |!      !          0    1515523    estudiantes_transferidos 
   TABLE DATA           �   COPY public.estudiantes_transferidos (id, nombre, edad, grado, escuela_anterior, fecha_transferencia, motivo_transferencia) FROM stdin;
    public               Comfe_owner    false    275   �+      %          0    1523723    estudiantitos 
   TABLE DATA           |   COPY public.estudiantitos (id_estudiante, nombrecompleto, apellidocompleto, numero_documento, fecha_nacimiento) FROM stdin;
    public               Comfe_owner    false    279   �-                0    1499260    eventos_deportivos 
   TABLE DATA           �   COPY public.eventos_deportivos (id, nombre_evento, fecha_evento, equipo_local, equipo_visitante, marcador_local, marcador_visitante) FROM stdin;
    public               Comfe_owner    false    273   �-      '          0    1531905    exploradoresespaciales 
   TABLE DATA           �   COPY public.exploradoresespaciales (id, nombre_nave, nombre_astronautas, fecha_viaje, planeta_visita, tiempo_viaje) FROM stdin;
    public               Comfe_owner    false    281   /      ;          0    1531991    festivalesextravagantes 
   TABLE DATA           r   COPY public.festivalesextravagantes (id, nombrefestival, pais, anoedicion, duraciondias, descripcion) FROM stdin;
    public               Comfe_owner    false    301   �/      =          0    1532000    ingredientesexoticos 
   TABLE DATA           d   COPY public.ingredientesexoticos (id, nombreingrediente, origen, usosculinarios, color) FROM stdin;
    public               Comfe_owner    false    303   �/                 0    1433720 
   inventario 
   TABLE DATA           t   COPY public.inventario (id_inventario, id_producto, cantidad_disponible, cantidad_reservada, ubicacion) FROM stdin;
    public               Comfe_owner    false    242   �/                0    1499245    jardines 
   TABLE DATA           M   COPY public.jardines (id, nombre_jardin, ubicacion, popularidad) FROM stdin;
    public               Comfe_owner    false    269   z0      O          0    1556488    listado_aviones 
   TABLE DATA           �   COPY public.listado_aviones (id, nombre, cantidad_motores, fecha_creacion, empresa_creadora, es_antiradar, cantidad_misiones, pais) FROM stdin;
    public               Comfe_owner    false    321   "2      S          0    1556504    listado_groserias 
   TABLE DATA           p   COPY public.listado_groserias (id, expresion, idioma, significado, epoca, utilizado_por, sinonimos) FROM stdin;
    public               Comfe_owner    false    325   ?2                0    1499228    mascotas 
   TABLE DATA           D   COPY public.mascotas (id, nombre_mascota, tipo_mascota) FROM stdin;
    public               Comfe_owner    false    265   \2      M          0    1556481    mi_tabla 
   TABLE DATA           .   COPY public.mi_tabla (id, nombre) FROM stdin;
    public               Comfe_owner    false    319   *3      7          0    1531975    misionessecretas 
   TABLE DATA           ]   COPY public.misionessecretas (id, nombre, ubicacion, nivel_secreto, descripcion) FROM stdin;
    public               Comfe_owner    false    297   [3      A          0    1532016    museos 
   TABLE DATA           m   COPY public.museos (id, nombre, ciudad, arquitecturadestacada, anoinauguracion, horarioatencion) FROM stdin;
    public               Comfe_owner    false    307   x3      ?          0    1532007    obrasdearte 
   TABLE DATA           b   COPY public.obrasdearte (id, titulo, artista, epocahistorica, tecnica, valorestimado) FROM stdin;
    public               Comfe_owner    false    305   �3      �          0    1433707    pagos 
   TABLE DATA           S   COPY public.pagos (id_pago, id_pedido, fecha_pago, monto, metodo_pago) FROM stdin;
    public               Comfe_owner    false    240   �3      E          0    1532030    patrimoniosculturales 
   TABLE DATA           u   COPY public.patrimoniosculturales (id, nombrepatrimonio, tipo, pais, anodeclaracion, estadoconservacion) FROM stdin;
    public               Comfe_owner    false    311   �4      �          0    1433672    pedidos 
   TABLE DATA           b   COPY public.pedidos (id_pedido, id_cliente, id_empleado, fecha_pedido, estado, total) FROM stdin;
    public               Comfe_owner    false    236   �4                0    1499206 	   peliculas 
   TABLE DATA           e   COPY public.peliculas (id, nombre, descripcion, tipo, clasificacion_edad, fecha_estreno) FROM stdin;
    public               Comfe_owner    false    261   �5      5          0    1531966    planetasdesconocidos 
   TABLE DATA           �   COPY public.planetasdesconocidos (id, nombre_planeta, galaxia, distancia_tierra, habitabilidad, descripcion, descubridor) FROM stdin;
    public               Comfe_owner    false    295   {:      �          0    1433633 	   productos 
   TABLE DATA           t   COPY public.productos (id_producto, nombre_producto, descripcion, precio, id_categoria, fecha_agregado) FROM stdin;
    public               Comfe_owner    false    231   �:                0    1490945 
   productos2 
   TABLE DATA           0   COPY public.productos2 (id, precio) FROM stdin;
    public               Comfe_owner    false    246   �<      �          0    1433656    productos_proveedores 
   TABLE DATA           J   COPY public.productos_proveedores (id_producto, id_proveedor) FROM stdin;
    public               Comfe_owner    false    234   �<      �          0    1433648    proveedores 
   TABLE DATA           �   COPY public.proveedores (id_proveedor, nombre_proveedor, contacto, telefono, direccion, ciudad, pais, codigo_postal, email) FROM stdin;
    public               Comfe_owner    false    233   �<                0    1499252 	   proyectos 
   TABLE DATA           L   COPY public.proyectos (id, nombre, descripcion, fecha_creacion) FROM stdin;
    public               Comfe_owner    false    271   �?      H          0    1540097    prueba 
   TABLE DATA           ,   COPY public.prueba (nombre, id) FROM stdin;
    public               Comfe_owner    false    314   �@      V          0    1572866 	   prueba_id 
   TABLE DATA           6   COPY public.prueba_id (id, nombre, color) FROM stdin;
    public               Comfe_owner    false    328   �@                0    1499139    raza_de_perro 
   TABLE DATA           3   COPY public.raza_de_perro (id, nombre) FROM stdin;
    public               Comfe_owner    false    248   A                0    1499235    recetas 
   TABLE DATA           Y   COPY public.recetas (id, nombre, descripcion, tipo, tiempo_coccion_estimado) FROM stdin;
    public               Comfe_owner    false    267   EA      1          0    1531948    recetasalquímicas 
   TABLE DATA           h   COPY public."recetasalquímicas" (id, nombre_receta, ingredientes, preparacion, beneficios) FROM stdin;
    public               Comfe_owner    false    291   �D                0    1499182    restaurantes 
   TABLE DATA           k   COPY public.restaurantes ("idRestaurante", nombre, direccion, especialidad, horario, telefono) FROM stdin;
    public               Comfe_owner    false    254   aF      -          0    1531931    ruinasantiguas 
   TABLE DATA           �   COPY public.ruinasantiguas (id, nombre, ubicacion, epoca, estado_conservacion, descripcion, fecha_descubrimiento, importancia_historica) FROM stdin;
    public               Comfe_owner    false    287   �H      T          0    1564673 
   sin_indice 
   TABLE DATA           @   COPY public.sin_indice (nombre, apellido, id, edad) FROM stdin;
    public               Comfe_owner    false    326   �H      G          0    1532038    tablita 
   TABLE DATA           4   COPY public.tablita (id, nombre, color) FROM stdin;
    public               Comfe_owner    false    313   WI      C          0    1532023    talleresculturales 
   TABLE DATA           ~   COPY public.talleresculturales (id, nombretaller, tipoarte, duracionhoras, materialesrequeridos, niveldificultad) FROM stdin;
    public               Comfe_owner    false    309   tI                0    1499192    tecnologias 
   TABLE DATA           K   COPY public.tecnologias (id, tecnologia, area, porcentaje_uso) FROM stdin;
    public               Comfe_owner    false    257   �I      /          0    1531940    tesorosperdidos 
   TABLE DATA           c   COPY public.tesorosperdidos (id, nombre, ubicacion, ano_descubrimiento, estado_actual) FROM stdin;
    public               Comfe_owner    false    289   OJ                0    1499217    viajes 
   TABLE DATA           C   COPY public.viajes (id, ciudad, continente, temporada) FROM stdin;
    public               Comfe_owner    false    263   lJ                0    1499188    viajes  
   TABLE DATA           #   COPY public."viajes "  FROM stdin;
    public               Comfe_owner    false    255   OK      �           0    0    animales_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.animales_id_seq', 9, true);
          public               Comfe_owner    false    249            �           0    0    artistas_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.artistas_id_seq', 5, true);
          public               Comfe_owner    false    258            �           0    0    artistascallejeros_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.artistascallejeros_id_seq', 1, false);
          public               Comfe_owner    false    298            �           0    0    canciones_salsa_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.canciones_salsa_id_seq', 10, true);
          public               Comfe_owner    false    276            �           0    0    cartasmagicas_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.cartasmagicas_id_seq', 1, false);
          public               Comfe_owner    false    292            �           0    0    categorias_id_categoria_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.categorias_id_categoria_seq', 1, false);
          public               Comfe_owner    false    228            �           0    0    clientes_id_cliente_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.clientes_id_cliente_seq', 1, false);
          public               Comfe_owner    false    224            �           0    0    colores_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.colores_id_seq', 22, true);
          public               Comfe_owner    false    251            �           0    0    criaturasmíticas_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."criaturasmíticas_id_seq"', 4, true);
          public               Comfe_owner    false    284            �           0    0    culturas_precolombinas_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.culturas_precolombinas_id_seq', 1, false);
          public               Comfe_owner    false    316            �           0    0    detalles_pedido_id_detalle_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.detalles_pedido_id_detalle_seq', 1, false);
          public               Comfe_owner    false    237            �           0    0    devoluciones_id_devolucion_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.devoluciones_id_devolucion_seq', 1, false);
          public               Comfe_owner    false    243            �           0    0    empleados_id_empleado_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.empleados_id_empleado_seq', 1, false);
          public               Comfe_owner    false    226            �           0    0 &   errores_transacciones_order_number_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.errores_transacciones_order_number_seq', 1, false);
          public               Comfe_owner    false    322            �           0    0    especiesenpeligro_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.especiesenpeligro_id_seq', 1, false);
          public               Comfe_owner    false    282            �           0    0    estudents_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.estudents_id_seq', 1, false);
          public               Comfe_owner    false    331            �           0    0    estudiantes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.estudiantes_id_seq', 150, true);
          public               Comfe_owner    false    329            �           0    0    estudiantes_transferidos_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.estudiantes_transferidos_id_seq', 20, true);
          public               Comfe_owner    false    274            �           0    0    estudiantitos_id_estudiante_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.estudiantitos_id_estudiante_seq', 9, true);
          public               Comfe_owner    false    278            �           0    0    eventos_deportivos_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.eventos_deportivos_id_seq', 5, true);
          public               Comfe_owner    false    272            �           0    0    exploradoresespaciales_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.exploradoresespaciales_id_seq', 2, true);
          public               Comfe_owner    false    280            �           0    0    festivalesextravagantes_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.festivalesextravagantes_id_seq', 1, false);
          public               Comfe_owner    false    300            �           0    0 
   id_sec_cli    SEQUENCE SET     8   SELECT pg_catalog.setval('public.id_sec_cli', 3, true);
          public               Comfe_owner    false    219            �           0    0    id_sec_compr_cli    SEQUENCE SET     >   SELECT pg_catalog.setval('public.id_sec_compr_cli', 2, true);
          public               Comfe_owner    false    220            �           0    0    id_sec_empl    SEQUENCE SET     9   SELECT pg_catalog.setval('public.id_sec_empl', 8, true);
          public               Comfe_owner    false    217            �           0    0    id_sec_fact    SEQUENCE SET     9   SELECT pg_catalog.setval('public.id_sec_fact', 3, true);
          public               Comfe_owner    false    222            �           0    0    id_sec_fact_det    SEQUENCE SET     =   SELECT pg_catalog.setval('public.id_sec_fact_det', 3, true);
          public               Comfe_owner    false    223            �           0    0    id_sec_produc    SEQUENCE SET     <   SELECT pg_catalog.setval('public.id_sec_produc', 21, true);
          public               Comfe_owner    false    216            �           0    0    id_sec_provee    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.id_sec_provee', 9, true);
          public               Comfe_owner    false    215            �           0    0    id_sec_vent    SEQUENCE SET     9   SELECT pg_catalog.setval('public.id_sec_vent', 3, true);
          public               Comfe_owner    false    218            �           0    0    id_sec_vent_prod    SEQUENCE SET     >   SELECT pg_catalog.setval('public.id_sec_vent_prod', 6, true);
          public               Comfe_owner    false    221            �           0    0    ingredientesexoticos_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.ingredientesexoticos_id_seq', 1, false);
          public               Comfe_owner    false    302            �           0    0    inventario_id_inventario_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.inventario_id_inventario_seq', 1, false);
          public               Comfe_owner    false    241            �           0    0    jardines_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.jardines_id_seq', 20, true);
          public               Comfe_owner    false    268            �           0    0    listado_aviones_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.listado_aviones_id_seq', 1, false);
          public               Comfe_owner    false    320            �           0    0    listado_groserias_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.listado_groserias_id_seq', 1, false);
          public               Comfe_owner    false    324            �           0    0    mascotas_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.mascotas_id_seq', 20, true);
          public               Comfe_owner    false    264            �           0    0    mi_tabla_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.mi_tabla_id_seq', 3, true);
          public               Comfe_owner    false    318            �           0    0    misionessecretas_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.misionessecretas_id_seq', 1, false);
          public               Comfe_owner    false    296            �           0    0    museos_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.museos_id_seq', 1, false);
          public               Comfe_owner    false    306            �           0    0    obrasdearte_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.obrasdearte_id_seq', 1, false);
          public               Comfe_owner    false    304            �           0    0    pagos_id_pago_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.pagos_id_pago_seq', 1, false);
          public               Comfe_owner    false    239            �           0    0    patrimoniosculturales_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.patrimoniosculturales_id_seq', 1, false);
          public               Comfe_owner    false    310            �           0    0    pedidos_id_pedido_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.pedidos_id_pedido_seq', 1, false);
          public               Comfe_owner    false    235            �           0    0    peliculas_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.peliculas_id_seq', 20, true);
          public               Comfe_owner    false    260            �           0    0    planetasdesconocidos_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.planetasdesconocidos_id_seq', 1, false);
          public               Comfe_owner    false    294            �           0    0    productos2_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.productos2_id_seq', 1, false);
          public               Comfe_owner    false    245            �           0    0    productos_id_producto_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.productos_id_producto_seq', 1, false);
          public               Comfe_owner    false    230            �           0    0    proveedores_id_proveedor_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.proveedores_id_proveedor_seq', 1, false);
          public               Comfe_owner    false    232            �           0    0    proyectos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.proyectos_id_seq', 5, true);
          public               Comfe_owner    false    270            �           0    0    prueba_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.prueba_id_seq', 3, true);
          public               Comfe_owner    false    315            �           0    0    raza_de_perro_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.raza_de_perro_id_seq', 2, true);
          public               Comfe_owner    false    250            �           0    0    recetas_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.recetas_id_seq', 20, true);
          public               Comfe_owner    false    266            �           0    0    recetasalquímicas_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."recetasalquímicas_id_seq"', 3, true);
          public               Comfe_owner    false    290            �           0    0    restaurantes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.restaurantes_id_seq', 15, true);
          public               Comfe_owner    false    253            �           0    0    ruinasantiguas_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.ruinasantiguas_id_seq', 1, false);
          public               Comfe_owner    false    286            �           0    0    sin_indice_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.sin_indice_id_seq', 17, true);
          public               Comfe_owner    false    327            �           0    0    tablita_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tablita_id_seq', 1, false);
          public               Comfe_owner    false    312            �           0    0    talleresculturales_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.talleresculturales_id_seq', 1, false);
          public               Comfe_owner    false    308            �           0    0    tecnologias_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tecnologias_id_seq', 10, true);
          public               Comfe_owner    false    256            �           0    0    tesorosperdidos_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tesorosperdidos_id_seq', 1, false);
          public               Comfe_owner    false    288            �           0    0    viajes_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.viajes_id_seq', 10, true);
          public               Comfe_owner    false    262            �           2606    1499153    animales animales_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.animales
    ADD CONSTRAINT animales_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.animales DROP CONSTRAINT animales_pkey;
       public                 Comfe_owner    false    247            �           2606    1499204    artistas artistas_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.artistas
    ADD CONSTRAINT artistas_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.artistas DROP CONSTRAINT artistas_pkey;
       public                 Comfe_owner    false    259            $           2606    1531989 *   artistascallejeros artistascallejeros_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.artistascallejeros
    ADD CONSTRAINT artistascallejeros_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.artistascallejeros DROP CONSTRAINT artistascallejeros_pkey;
       public                 Comfe_owner    false    299                       2606    1523720 $   canciones_salsa canciones_salsa_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.canciones_salsa
    ADD CONSTRAINT canciones_salsa_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.canciones_salsa DROP CONSTRAINT canciones_salsa_pkey;
       public                 Comfe_owner    false    277                       2606    1531964     cartasmagicas cartasmagicas_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.cartasmagicas
    ADD CONSTRAINT cartasmagicas_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.cartasmagicas DROP CONSTRAINT cartasmagicas_pkey;
       public                 Comfe_owner    false    293            �           2606    1433631    categorias categorias_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (id_categoria);
 D   ALTER TABLE ONLY public.categorias DROP CONSTRAINT categorias_pkey;
       public                 Comfe_owner    false    229            �           2606    1433611    clientes clientes_email_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_email_key UNIQUE (email);
 E   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_email_key;
       public                 Comfe_owner    false    225            �           2606    1433609    clientes clientes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id_cliente);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public                 Comfe_owner    false    225            �           2606    1572865 '   animales colocar el nombre en mayuscula    CHECK CONSTRAINT     �   ALTER TABLE public.animales
    ADD CONSTRAINT "colocar el nombre en mayuscula" CHECK (((nombre)::text = upper((nombre)::text))) NOT VALID;
 N   ALTER TABLE public.animales DROP CONSTRAINT "colocar el nombre en mayuscula";
       public               Comfe_owner    false    247    247            �           2606    1499162    colores colores_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.colores
    ADD CONSTRAINT colores_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.colores DROP CONSTRAINT colores_pkey;
       public                 Comfe_owner    false    252                       2606    1531929 (   criaturasmíticas criaturasmíticas_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."criaturasmíticas"
    ADD CONSTRAINT "criaturasmíticas_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."criaturasmíticas" DROP CONSTRAINT "criaturasmíticas_pkey";
       public                 Comfe_owner    false    285            6           2606    1548296 2   culturas_precolombinas culturas_precolombinas_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.culturas_precolombinas
    ADD CONSTRAINT culturas_precolombinas_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.culturas_precolombinas DROP CONSTRAINT culturas_precolombinas_pkey;
       public                 Comfe_owner    false    317            �           2606    1433695 $   detalles_pedido detalles_pedido_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.detalles_pedido
    ADD CONSTRAINT detalles_pedido_pkey PRIMARY KEY (id_detalle);
 N   ALTER TABLE ONLY public.detalles_pedido DROP CONSTRAINT detalles_pedido_pkey;
       public                 Comfe_owner    false    238            �           2606    1433741    devoluciones devoluciones_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.devoluciones
    ADD CONSTRAINT devoluciones_pkey PRIMARY KEY (id_devolucion);
 H   ALTER TABLE ONLY public.devoluciones DROP CONSTRAINT devoluciones_pkey;
       public                 Comfe_owner    false    244            �           2606    1433622    empleados empleados_email_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_email_key UNIQUE (email);
 G   ALTER TABLE ONLY public.empleados DROP CONSTRAINT empleados_email_key;
       public                 Comfe_owner    false    227            �           2606    1433620    empleados empleados_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_pkey PRIMARY KEY (id_empleado);
 B   ALTER TABLE ONLY public.empleados DROP CONSTRAINT empleados_pkey;
       public                 Comfe_owner    false    227            <           2606    1556502 0   errores_transacciones errores_transacciones_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.errores_transacciones
    ADD CONSTRAINT errores_transacciones_pkey PRIMARY KEY (order_number);
 Z   ALTER TABLE ONLY public.errores_transacciones DROP CONSTRAINT errores_transacciones_pkey;
       public                 Comfe_owner    false    323                       2606    1531919 (   especiesenpeligro especiesenpeligro_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.especiesenpeligro
    ADD CONSTRAINT especiesenpeligro_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.especiesenpeligro DROP CONSTRAINT especiesenpeligro_pkey;
       public                 Comfe_owner    false    283            H           2606    1581076 (   estudents estudents_numero_documento_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.estudents
    ADD CONSTRAINT estudents_numero_documento_key UNIQUE (numero_documento);
 R   ALTER TABLE ONLY public.estudents DROP CONSTRAINT estudents_numero_documento_key;
       public                 Comfe_owner    false    332            J           2606    1581074    estudents estudents_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.estudents
    ADD CONSTRAINT estudents_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.estudents DROP CONSTRAINT estudents_pkey;
       public                 Comfe_owner    false    332            D           2606    1581065 ,   estudiantes estudiantes_numero_documento_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.estudiantes
    ADD CONSTRAINT estudiantes_numero_documento_key UNIQUE (numero_documento);
 V   ALTER TABLE ONLY public.estudiantes DROP CONSTRAINT estudiantes_numero_documento_key;
       public                 Comfe_owner    false    330            F           2606    1581063    estudiantes estudiantes_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.estudiantes
    ADD CONSTRAINT estudiantes_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.estudiantes DROP CONSTRAINT estudiantes_pkey;
       public                 Comfe_owner    false    330            
           2606    1515530 6   estudiantes_transferidos estudiantes_transferidos_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.estudiantes_transferidos
    ADD CONSTRAINT estudiantes_transferidos_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.estudiantes_transferidos DROP CONSTRAINT estudiantes_transferidos_pkey;
       public                 Comfe_owner    false    275                       2606    1523730 0   estudiantitos estudiantitos_numero_documento_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.estudiantitos
    ADD CONSTRAINT estudiantitos_numero_documento_key UNIQUE (numero_documento);
 Z   ALTER TABLE ONLY public.estudiantitos DROP CONSTRAINT estudiantitos_numero_documento_key;
       public                 Comfe_owner    false    279                       2606    1523728     estudiantitos estudiantitos_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.estudiantitos
    ADD CONSTRAINT estudiantitos_pkey PRIMARY KEY (id_estudiante);
 J   ALTER TABLE ONLY public.estudiantitos DROP CONSTRAINT estudiantitos_pkey;
       public                 Comfe_owner    false    279                       2606    1499265 *   eventos_deportivos eventos_deportivos_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.eventos_deportivos
    ADD CONSTRAINT eventos_deportivos_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.eventos_deportivos DROP CONSTRAINT eventos_deportivos_pkey;
       public                 Comfe_owner    false    273                       2606    1531912 2   exploradoresespaciales exploradoresespaciales_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.exploradoresespaciales
    ADD CONSTRAINT exploradoresespaciales_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.exploradoresespaciales DROP CONSTRAINT exploradoresespaciales_pkey;
       public                 Comfe_owner    false    281            &           2606    1531998 4   festivalesextravagantes festivalesextravagantes_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.festivalesextravagantes
    ADD CONSTRAINT festivalesextravagantes_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.festivalesextravagantes DROP CONSTRAINT festivalesextravagantes_pkey;
       public                 Comfe_owner    false    301            (           2606    1532005 .   ingredientesexoticos ingredientesexoticos_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.ingredientesexoticos
    ADD CONSTRAINT ingredientesexoticos_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.ingredientesexoticos DROP CONSTRAINT ingredientesexoticos_pkey;
       public                 Comfe_owner    false    303            �           2606    1433726    inventario inventario_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT inventario_pkey PRIMARY KEY (id_inventario);
 D   ALTER TABLE ONLY public.inventario DROP CONSTRAINT inventario_pkey;
       public                 Comfe_owner    false    242                       2606    1499250    jardines jardines_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.jardines
    ADD CONSTRAINT jardines_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.jardines DROP CONSTRAINT jardines_pkey;
       public                 Comfe_owner    false    269            :           2606    1556493 $   listado_aviones listado_aviones_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.listado_aviones
    ADD CONSTRAINT listado_aviones_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.listado_aviones DROP CONSTRAINT listado_aviones_pkey;
       public                 Comfe_owner    false    321            >           2606    1556511 (   listado_groserias listado_groserias_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.listado_groserias
    ADD CONSTRAINT listado_groserias_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.listado_groserias DROP CONSTRAINT listado_groserias_pkey;
       public                 Comfe_owner    false    325                        2606    1499233    mascotas mascotas_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.mascotas
    ADD CONSTRAINT mascotas_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.mascotas DROP CONSTRAINT mascotas_pkey;
       public                 Comfe_owner    false    265            8           2606    1556486    mi_tabla mi_tabla_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.mi_tabla
    ADD CONSTRAINT mi_tabla_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.mi_tabla DROP CONSTRAINT mi_tabla_pkey;
       public                 Comfe_owner    false    319            "           2606    1531982 &   misionessecretas misionessecretas_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.misionessecretas
    ADD CONSTRAINT misionessecretas_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.misionessecretas DROP CONSTRAINT misionessecretas_pkey;
       public                 Comfe_owner    false    297            ,           2606    1532021    museos museos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.museos
    ADD CONSTRAINT museos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.museos DROP CONSTRAINT museos_pkey;
       public                 Comfe_owner    false    307            �           2606    1572864    animales no puede ser negativo    CHECK CONSTRAINT     e   ALTER TABLE public.animales
    ADD CONSTRAINT "no puede ser negativo" CHECK ((edad > 0)) NOT VALID;
 E   ALTER TABLE public.animales DROP CONSTRAINT "no puede ser negativo";
       public               Comfe_owner    false    247    247            �           2606    1564687 ;   sin_indice no se aceptan numeros negativos ni mayores a 120    CHECK CONSTRAINT     �   ALTER TABLE public.sin_indice
    ADD CONSTRAINT "no se aceptan numeros negativos ni mayores a 120" CHECK (((edad > 0) AND (edad < 120))) NOT VALID;
 b   ALTER TABLE public.sin_indice DROP CONSTRAINT "no se aceptan numeros negativos ni mayores a 120";
       public               Comfe_owner    false    326    326            *           2606    1532014    obrasdearte obrasdearte_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.obrasdearte
    ADD CONSTRAINT obrasdearte_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.obrasdearte DROP CONSTRAINT obrasdearte_pkey;
       public                 Comfe_owner    false    305            �           2606    1433713    pagos pagos_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.pagos
    ADD CONSTRAINT pagos_pkey PRIMARY KEY (id_pago);
 :   ALTER TABLE ONLY public.pagos DROP CONSTRAINT pagos_pkey;
       public                 Comfe_owner    false    240            0           2606    1532035 0   patrimoniosculturales patrimoniosculturales_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.patrimoniosculturales
    ADD CONSTRAINT patrimoniosculturales_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.patrimoniosculturales DROP CONSTRAINT patrimoniosculturales_pkey;
       public                 Comfe_owner    false    311            �           2606    1433678    pedidos pedidos_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (id_pedido);
 >   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_pkey;
       public                 Comfe_owner    false    236            �           2606    1499215    peliculas peliculas_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.peliculas
    ADD CONSTRAINT peliculas_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.peliculas DROP CONSTRAINT peliculas_pkey;
       public                 Comfe_owner    false    261                        2606    1531973 .   planetasdesconocidos planetasdesconocidos_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.planetasdesconocidos
    ADD CONSTRAINT planetasdesconocidos_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.planetasdesconocidos DROP CONSTRAINT planetasdesconocidos_pkey;
       public                 Comfe_owner    false    295            �           2606    1490951    productos2 productos2_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.productos2
    ADD CONSTRAINT productos2_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.productos2 DROP CONSTRAINT productos2_pkey;
       public                 Comfe_owner    false    246            �           2606    1433641    productos productos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id_producto);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_pkey;
       public                 Comfe_owner    false    231            �           2606    1433660 0   productos_proveedores productos_proveedores_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.productos_proveedores
    ADD CONSTRAINT productos_proveedores_pkey PRIMARY KEY (id_producto, id_proveedor);
 Z   ALTER TABLE ONLY public.productos_proveedores DROP CONSTRAINT productos_proveedores_pkey;
       public                 Comfe_owner    false    234    234            �           2606    1433655    proveedores proveedores_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.proveedores
    ADD CONSTRAINT proveedores_pkey PRIMARY KEY (id_proveedor);
 F   ALTER TABLE ONLY public.proveedores DROP CONSTRAINT proveedores_pkey;
       public                 Comfe_owner    false    233                       2606    1499257    proyectos proyectos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.proyectos
    ADD CONSTRAINT proyectos_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.proyectos DROP CONSTRAINT proyectos_pkey;
       public                 Comfe_owner    false    271            B           2606    1572870    prueba_id prueba_id_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.prueba_id
    ADD CONSTRAINT prueba_id_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.prueba_id DROP CONSTRAINT prueba_id_pkey;
       public                 Comfe_owner    false    328            4           2606    1540108    prueba prueba_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.prueba
    ADD CONSTRAINT prueba_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.prueba DROP CONSTRAINT prueba_pkey;
       public                 Comfe_owner    false    314            �           2606    1499155     raza_de_perro raza_de_perro_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.raza_de_perro
    ADD CONSTRAINT raza_de_perro_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.raza_de_perro DROP CONSTRAINT raza_de_perro_pkey;
       public                 Comfe_owner    false    248                       2606    1499243    recetas recetas_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.recetas
    ADD CONSTRAINT recetas_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.recetas DROP CONSTRAINT recetas_pkey;
       public                 Comfe_owner    false    267                       2606    1531955 *   recetasalquímicas recetasalquímicas_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."recetasalquímicas"
    ADD CONSTRAINT "recetasalquímicas_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."recetasalquímicas" DROP CONSTRAINT "recetasalquímicas_pkey";
       public                 Comfe_owner    false    291            �           2606    1499187    restaurantes restaurantes_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.restaurantes
    ADD CONSTRAINT restaurantes_pkey PRIMARY KEY ("idRestaurante");
 H   ALTER TABLE ONLY public.restaurantes DROP CONSTRAINT restaurantes_pkey;
       public                 Comfe_owner    false    254                       2606    1531938 "   ruinasantiguas ruinasantiguas_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.ruinasantiguas
    ADD CONSTRAINT ruinasantiguas_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.ruinasantiguas DROP CONSTRAINT ruinasantiguas_pkey;
       public                 Comfe_owner    false    287            @           2606    1564682 %   sin_indice sin_indice_pkey_por_que_si 
   CONSTRAINT     c   ALTER TABLE ONLY public.sin_indice
    ADD CONSTRAINT sin_indice_pkey_por_que_si PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.sin_indice DROP CONSTRAINT sin_indice_pkey_por_que_si;
       public                 Comfe_owner    false    326            �           0    0 3   CONSTRAINT sin_indice_pkey_por_que_si ON sin_indice    COMMENT     j   COMMENT ON CONSTRAINT sin_indice_pkey_por_que_si ON public.sin_indice IS 'kjkjcjdkjdkjf fkjkjjf kjkjjf ';
          public               Comfe_owner    false    3648            �           2606    1564686 ?   sin_indice solo se permiten nombres que inicien con s mayuscula    CHECK CONSTRAINT     �   ALTER TABLE public.sin_indice
    ADD CONSTRAINT "solo se permiten nombres que inicien con s mayuscula" CHECK (((nombre)::text ~ '^S.*'::text)) NOT VALID;
 f   ALTER TABLE public.sin_indice DROP CONSTRAINT "solo se permiten nombres que inicien con s mayuscula";
       public               Comfe_owner    false    326    326            2           2606    1532043    tablita tablita_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tablita
    ADD CONSTRAINT tablita_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tablita DROP CONSTRAINT tablita_pkey;
       public                 Comfe_owner    false    313            .           2606    1532028 *   talleresculturales talleresculturales_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.talleresculturales
    ADD CONSTRAINT talleresculturales_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.talleresculturales DROP CONSTRAINT talleresculturales_pkey;
       public                 Comfe_owner    false    309            �           2606    1499197    tecnologias tecnologias_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tecnologias
    ADD CONSTRAINT tecnologias_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tecnologias DROP CONSTRAINT tecnologias_pkey;
       public                 Comfe_owner    false    257                       2606    1531945 $   tesorosperdidos tesorosperdidos_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tesorosperdidos
    ADD CONSTRAINT tesorosperdidos_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tesorosperdidos DROP CONSTRAINT tesorosperdidos_pkey;
       public                 Comfe_owner    false    289            �           2606    1499222    viajes viajes_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.viajes
    ADD CONSTRAINT viajes_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.viajes DROP CONSTRAINT viajes_pkey;
       public                 Comfe_owner    false    263            P           2606    1433696 .   detalles_pedido detalles_pedido_id_pedido_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalles_pedido
    ADD CONSTRAINT detalles_pedido_id_pedido_fkey FOREIGN KEY (id_pedido) REFERENCES public.pedidos(id_pedido) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.detalles_pedido DROP CONSTRAINT detalles_pedido_id_pedido_fkey;
       public               Comfe_owner    false    3556    238    236            Q           2606    1433701 0   detalles_pedido detalles_pedido_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalles_pedido
    ADD CONSTRAINT detalles_pedido_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.detalles_pedido DROP CONSTRAINT detalles_pedido_id_producto_fkey;
       public               Comfe_owner    false    231    3550    238            T           2606    1433742 (   devoluciones devoluciones_id_pedido_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.devoluciones
    ADD CONSTRAINT devoluciones_id_pedido_fkey FOREIGN KEY (id_pedido) REFERENCES public.pedidos(id_pedido) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.devoluciones DROP CONSTRAINT devoluciones_id_pedido_fkey;
       public               Comfe_owner    false    244    3556    236            U           2606    1433747 *   devoluciones devoluciones_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.devoluciones
    ADD CONSTRAINT devoluciones_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.devoluciones DROP CONSTRAINT devoluciones_id_producto_fkey;
       public               Comfe_owner    false    231    244    3550            S           2606    1433727 &   inventario inventario_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT inventario_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.inventario DROP CONSTRAINT inventario_id_producto_fkey;
       public               Comfe_owner    false    231    242    3550            R           2606    1433714    pagos pagos_id_pedido_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pagos
    ADD CONSTRAINT pagos_id_pedido_fkey FOREIGN KEY (id_pedido) REFERENCES public.pedidos(id_pedido) ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.pagos DROP CONSTRAINT pagos_id_pedido_fkey;
       public               Comfe_owner    false    240    3556    236            N           2606    1433679    pedidos pedidos_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.clientes(id_cliente) ON DELETE SET NULL;
 I   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_id_cliente_fkey;
       public               Comfe_owner    false    225    236    3542            O           2606    1433684     pedidos pedidos_id_empleado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_id_empleado_fkey FOREIGN KEY (id_empleado) REFERENCES public.empleados(id_empleado) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_id_empleado_fkey;
       public               Comfe_owner    false    236    227    3546            K           2606    1433642 %   productos productos_id_categoria_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_id_categoria_fkey FOREIGN KEY (id_categoria) REFERENCES public.categorias(id_categoria) ON DELETE SET NULL;
 O   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_id_categoria_fkey;
       public               Comfe_owner    false    229    3548    231            L           2606    1433661 <   productos_proveedores productos_proveedores_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos_proveedores
    ADD CONSTRAINT productos_proveedores_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.productos_proveedores DROP CONSTRAINT productos_proveedores_id_producto_fkey;
       public               Comfe_owner    false    231    234    3550            M           2606    1433666 =   productos_proveedores productos_proveedores_id_proveedor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos_proveedores
    ADD CONSTRAINT productos_proveedores_id_proveedor_fkey FOREIGN KEY (id_proveedor) REFERENCES public.proveedores(id_proveedor) ON DELETE CASCADE;
 g   ALTER TABLE ONLY public.productos_proveedores DROP CONSTRAINT productos_proveedores_id_proveedor_fkey;
       public               Comfe_owner    false    233    234    3552            	           826    966657     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     {   ALTER DEFAULT PRIVILEGES FOR ROLE cloud_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO neon_superuser WITH GRANT OPTION;
          public               cloud_admin    false            	           826    966656    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE cloud_admin IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO neon_superuser WITH GRANT OPTION;
          public               cloud_admin    false               U   x�3�,KLN���2�,H-*�1�9�K�,NwGO?GNc.3N� ��9M�,��AQ��F\������.A�>��F\1z\\\ ���         �   x�%�1n1D��)|G�k�H�A���Z�]���-�mr������h�7zcqJ���\8s�1�#6y�XB$�n�n�5X�{�G��j�z���ȧ%�q�J��2F5Ɗ^��o�AqdƑ������¹�����IW%�2+�OW�Q��Bs	��+v��g=a3�״ҝ�F��;��4��%<��N'�/B�?K}E0      9      x������ � �      #   }  x��R�n�@�yO��SXq�أ,$)�u��,Y(���=�d@}����~�R��i���G��C�28XPl�0|�=ԭ(.h+g=a§UK� ��L��7��!,�Q�/����]�{�8�p�[�g,$�~�G���RrcX����4�u4m�F��`j�v?�+���%�����d6��?A�zVw�:���^<#��u�=.�^s-���}�>��n��+�)�$�1��Zb���p��a|0r�ì��I�L��=�.�%�+S�@�������7��X[q'C��\��aD�J/��l6=��K�_���H�Mm�j���b|���/����'p�f<i>bkќ���}���a�+�F��-f#�w����w�S��/�e��vl���;pwι?.�\      3      x������ � �      �   �  x�eRKn�0]˧��I�~��l��Ȣ�#�N%ӕ� �mz��G����<�Yؠ)���s��eL�8�#E�2%���K�f��^�3F�G	�H����v�2�񯤡�4�8e�2QzQ�Ŵ�F��U©��l�Y�����CG���<Nҹ(2�^l��,Jm�La��
7t��.�Z�}�_K���z����
�ZX�	y��)N���-R��0tW��_��������*U��8�U��|�p�>��8c�2���|�Z���O������N�3�'sm-%Q�dnħ�O�,���C����wˈ��
��V��)��2��殲�����-���*�*{Uh%*l�RH�z��~9�꒘�V{u�v��'.�,����㊠#���Ż3ԝnGs�X��0n箞�٪����C�u�*��      �   B  x����N�@��'O1�
k.�fU�@[%R$U7�x��x�1�ڼM�,XT<�_�g���B��s�<��_,��u\uO��U?EkG�G�7����m����Tq�fyAw���m���0�қ.��?2�B��R���&�T$S�'�^��#¬{�	�Ao0��>�y�&��N��2%�k�7����l�ї������2�9�#Y2!�����-V�=V��IcD�{S�!U)�Rj�:��γ ���VfD�)�bD*2d�bc��� �R���W%QmKw���0�.�<��4���l�w,�p��������嘉����iU�����%2�n"O�;k+d� �{�nĒ�ɈM%�n
���d�0Ek�	+ǰ���l�e�8̻���(R\�R&�!�>�J��<�+��ڿդgO��&Q���ǵۍ��s����l3'O�)��]�&F����.�cT(��t�y"U���|Ȱ��.��ekvP�c��x\�Aݿ���U,w��Ú*��-�����[m���S�o���u�A�h������,�Lϻ}I���R��I>��=�L&��[�      
     x�=�=N�0��kl�l��[:NB��
!*��"����[pNCG��1N$�ʟޛ�y�����|P���vB$���8�g��9SpӴ:VE֑��(����6�I�ȟVb
�hμ�O+l�{8�3�GJ��7|��Ls�f&yl��BeP*��$z�d�4�m ���%�KRT.Z�0+�@7�=��lˎ��́�u��J�
���{|Qj���߹�T]�P���iJ��+�7f����l���&G%��%:���������n䴼����!�u�`e      +   �   x��=NC1�k�{��((#~:
��h��e�^��7�܆��9�/�݌f�i��<
�~e3��v�X�	�T"y���/%����|�h����B0b��޼spY8d3��I%���O�1C�~��2�28%��NB�h���.]�b��~`^�fL}��м���u�R��pA8�-�	�Sh���lo�s_9|����l�g��$TU<�2T����밵h_7)K��~���?��i�      K      x������ � �      �   q   x�M�a� ��aEq�.��9���bb�����/�WY���փ46M�"-�L���EP+���E�(?���[V��&%��)���}�T�N������T����O7�gf=         $  x�e�=N�0�k�s�E�w�.� 
J�3+Y���I�Ba/�8
�W�SL�7nO+]TwP�T�f�7���)�]��B��w�8T��5�q�K��ܾ�e%*Q��Pu��/�z�<��������Xܧ�e�ƆYVT������,���"P2@h�xcdî�@���t��](QX���F�Ɩ�:��
��{J)&��I6��d':���׀��9���1�x����'��V�2T�[��˅�{-�
?r������H��P.���˚�̹�]�؁V�-�;��#|���v6��AJ�@���      �   �  x�e��n�0���Sp/$IQ��:A�`�@�.�q�P�A�F����AC�A/֣�&F��#��?	k:F���i�|�cv�_����M��].�TJ버[�ފMt�l$!�濴ѵp7�i�M�j��m��`Ek�� � ��P�e.M�`CϾ�o6��ghYd��W>��3��^,��X�lp-�^l{/JS����>ЇֈV���(u���(Ӱ�_�����i�l3�/��H��s��]��K*�c �������(+D���g6�u������sf�dd��\bV���{*Iug,v��f.�!�H_\R*����$l��y�#�uC+�Q3�
���s4����OC�傚W��&,:Ӭ��!�xz��o��L	7�?S�i�3�Y(|����@��L�i_�Y��!�ڌ      Q      x������ � �      )      x������ � �      Z      x������ � �      X   �	  x�mX�n�H<��b����(K�l�d{$�災���6�!���>eo>���ᛯ�c��bgi��]��d��]o����ќ�;K���M�_���|E��>��ڍ�o�\~l�s�X���*�V����Ԝ��&s3lp�~��M�|6_%��33��3W���C����I�"�J��վ���w�o�r076僴J�e�V��]�x������ha���*�W�/Y���f̫�G����Z�+��9��éjy5��9`���O��0�c3��㓋.q}�\"?ۦ77�v��o���a��8!2o�Cی�M�=<-�&�#Z���;g���u��%>���W����w�/+L�Ś�e�۹�u��C���#0x�$p���m:@�m��
��)�������9��B2R�ؕ�8dinڵ7����Z0�x����U+�/q��f]�pćQ�8pm�������<��rH��l[d�f���\Z�q5\�����kx���v��)H�����!ϛ��m�YU:�F�AS���#�����V!�t�̄�� ��{\v��*�RNB��������������)0�B���s�G>H�(�\4]��AB:�B(�P�����{ �	�
��$�����uBi���
!�"��/��ڡһa��T�Ty§d��v��Qm�oC8�P*��Sj6��RT���s���R�S����y3����#s6@��Bd����f�c��B���O*��G�E$�bȖ۪z"ϩ��5ߎ�TT�u)-Qw��2�rT�i�u�׺�27P�����rV��4���� c�@�􈗗oh|b^��������0�/Sh��D3��т����cQeG��}\��5/ �)v�XԊ�l15/7{Q��}��U��	����/D����P���	�f�g9�2���:>�i~_�T�B�
t���K�_5��|Tᔱ�"j���v�a ��{%�)����B���f�5չup�N�o#Ym^�{������TM��<�ԯ��K���ݎ���Ľ�;ND7WU�zː[@��}���p0*(b:� ��k/���pʏ8�L�<3g�;���J���(��������w�|4ƈMC�����_�^�G��]
�mY��>u�<�Aϑ��䶒���,J��b��e�v�͖y�D-�:�GA��zI��o)�B�ML��޵��z��sQ��)P$n���z/RMb��O���)��t;�ܼ����E�U�OW�iN
i7��C��q�a+ *t����'E��{@(ذ����\�� /�Em޶������Թ����J�m�<ܸ�D���2$�e��Пs��us�R�X�kpPk>��o�����+��FZy�.�{c�L�Ǵ�sʌ����_����2�6S�x	{ 	az���|8�ג�VR�=�<|_�j���������ک���q(#9��[VA�?]Ik�ܵ��r�f;<�-k-�)��B���v蘰 ���*�]W�NE�Q�����*��T��f���؞ib�2�wUV�HѴ*E�W͸Ŝ�n\^E�[<|�������B�����	qAT�� .�+N�E����E�/'��C�m�0C��<�ߡ_�$�wߪ2�[^�ܰ��*j�X������8n.�l�u]��Fy5^@�S��&�x�hq�����E�B��hf����b��ц�Qy��z�ǖ��f�6�pՑʌPgh�;>��̂@�:���W�3�Vr�'&��ul꘴u!#d���2���S���Uf�4�O�*��֦Y�XG&:[{��"s�}����������c|\ƩZUX��Sl�l9����k��JO�2�A����$v�V"��5�����9�m�<5�s��_Rkһ�tB�ǹ�B�I�$�bV&e-8G�� �t����8�=[yP��(�����v����U�m�ٞ��������ίZ�P�� 	�~�ŝ<[�P���;x�_����{�H}��_�,{�wR���A��U Q48I#YDl�5��5�}7�� 5�E��/J s~Sr��I/!J﵈��𳋆{������lO���N�|�=RVv��q��8�5�pO66���?\F�=�H	����3�%��F�K\!!o����2ۓ�z��B���=����{��~���tkY ��l�ȥP�Z��]4ݓ�=�}97�ٞl</	H��$��d#�ᑷaM��#ٸ_	LH��6�zJ�6��Rzx��G��+�����@�5���	�Pϟ��R��Λ<=��G%��4��O���W�+%d�z���jf�����"�T=T&�S>-�؆^dT�����*,�������z�B���z�'�{��/A�ļC]Ꙟ����<������Y�D^�Y�;Xi�3=V:�.K�m����Rz�~��i4��w5���,�ذi�T�����_�0�`%Sy������DҚ�j�\|��C6+TV�߄������W���6��[���WP�
+�'��/Zt�q�o�l!cve>���9#��<��?99�/4�%�      !   �  x�}�=r�0Fk�� 3E꧴%[�"Ɗ�q�fI"
2 ���$�q�BE�G�ŲHP����o��tPӝ9k������"wM�q	��Q��YJ�P�BђS�Q��$m.@��B��$o�o]}"8�ߕ
��\��	2�Tݚ��vF�o���zF)�i�K^Ac�;)��$��-��R���!	�h���l;�н*���yw���	�SrP_��׵y�K����v�3�	�[ң��[�b�3;�A�9�B�����'�� s;_bAV���Ce.�7xt�;�a��$��FT�<����9Z��)��KhZ�z��1�,�T��t+<�����F$&�M��f��Kd�^�K�c9�xz߉�K|r��@ u��'��	�O��J ��r|LsQ^�;���5��_�R�m|o��!F��� ���7<������_J+0�v����qp��@��QU楡�c��e::�H$�|��/�d��      %   P   x�3��)�,VH�I��+��,N�K�H����R�8��ML�8�t��˒39�8S!#19;��� ��YU� 	��           x�=�MN�@��է�@��f�M&���M	%im�L�h�8.]x
.fC�ٽ���W�Ñ|0�`ϸ�c�i��qdAg�L�<�Kh�r={lRܧP� a��g�P�V6j�o�@gZ':�*��'�N�h��n�)��=��^؏�FXY�m ?��\�����/{qej/�nO�M�4ACƿ�=6d;q����܋w�]�ȱHΖ"�3��3�]~��'��=Y�Oq��m�V��7�h����.�J��<�����U��[���P��T)���n�      '   �   x�%�1�0 ���� ��DAF����1qi����5��N/���Ih>�� Wm6�3��xN늍��z����ۍZA�e��U&K�$����Z"+��q_M��x�	���w�Q�t�A`�^�cObk�"�{3(�5��?z���B.      ;      x������ � �      =      x������ � �          �   x�u�=�0���N��7��X�`�t���\��K3��<}�������������Fwr��2���y*&��_>p@A����ʀ �*���*����jB�;D&$��
���˲��Zd��[�B��Y��o��$��[M         �  x�e�MN1�יS��i)?�� ���q;��8	n�X �0Ùi�e��{�.�p�~8=�о;� ]�V�&6����+����Am��cK�^��ِ�$�v�a�l���Y�@y�;��bzn߃�Tw$���?��r�ܠ:4>�	�'��G��~�ql����[�;,Ӑ����;t�7<���i�|#��Op��5��,$��p-s��Q��I�f�O��\��t�S�e��j�9<���CN�d�c�!������A�T9�;��E�^��j���H�r��lq�^y�/G�L����F&6 ��	]v�j�?�]F|�D���6	$9��*R��~�:u����Ą��k���DN���[�����1�0���"��|6u�!���~�(�o�c      O      x������ � �      S      x������ � �         �   x�=��AQEǻ#�m葐xC��=�r����7�ŏ)�2lwW�b��S�R	��ޡ�NJett�h]<U0v�ټ�[�*f���s���͐:r�/�@�c��&&A.>fg\Dg�b��̘K�ʋ�,����O>���կ�+F��M�������?�ؤ�3�:��$�����%M[���-1߸D�Y�,�B�R      M   !   x�3����M*JU0�2�1���aLC�=... ��	�      7      x������ � �      A      x������ � �      ?      x������ � �      �   �   x�}�=r1Fk�� I���e�PP�q`3���2���H���e�S�T*�=�IB�VW��28����lJ�w#>��q7�F@:"�~ɟ��6*����|���^/s��R6��_�c��T���R�b<�Ny��l����"�f����7�r:��� �9|5�j��!�TD�m,��	R�
5���zf�܉�·=��D��yiҝaB�����.x�Ƙ�ws�      E      x������ � �      �   �   x�m�AN�0E��)|��l'N�nG�� lFCHC� q~�NK#������_@@AY�ˉ�D�vp�������e1��8��$q[��DO�m���Z(���r��$�{�n�}MU̘ ��Zd�?�+k`��F�7��������3�F�r��l�}�bA�^���M�k%���P�*�o�����R�wrR�g՘Be�vG+aR�m���*��4^]         �  x�}V�n7]s���F�f��2�]�E���+\q(�EN�!��tץZ�����K�Ȳ�H�(�}�s�)���_�5k�?RK֒�ݑl��������1�d�%)e�'%m�k�@R;�9�������vB�W�ئ5�	��N��?�jZO��IyR̸�%E���y���UW&�>�T��!� k��E��k|jcm�>�?;]��6PC�ϝ�T�T�I�D�"��~9����X|^#7b~��o#�������L7���������@R��d�k����"x���ĐU��@5)��q�Z��ƙ��%j*�]����A^�Mո��\uȎ�Qs�Z��dm�HhӋ#�r�o)�"�'UU���~��I�RH,(��5z�f�!R�h�����bw���A�Vם�!�!�8랂��L�it��_��|��:d�D(��/K�H����z4b���טx_�k(h����F<��Ź��򆛑?%(���ЃNC�J~��L���Qf�A2 ���PL��I�!�&:����lZ\p�;�����A�;�:Ң�C��Ə�wBڬ@m5��Sk�J#B�l6��E9_X�����}ާGf��.+#�Nϭ��X��V;J=a`��5�c&`s�h�_��&.ʒ���(��Yɞ��4Ƶ�,� lo[6�ܑ����&�)`n�\Z?'{ �s���w]�BH�XH9lq���h�/aSЖg�%j���h�$k����-��D`��Ac;?)�(g�>zٱ�[��*͆�M��` j�R;��a�5����.��6�F��Y�̀��F�S  G������>�V�u��厚��~�83[�#�:M �$H��þ$�aS����tR��q5zh�V�55�o ���l^�7^L�����F�i�o(^]��`�����B�o�\����v��1��>�K����#��# ~x�38|Q��Xe9^���_����;>��,Nf�䈵Ɣo�z}b��)ƆcP�~�C<K��d�8deZ�d���1S�H8��k�ޟ�����tjE���D�q@
��Yؖ'l��~aq��q�[�+�����up�3��?w���S���'ԏ�bW�5\ ���X��oӎQ�W��]�^]��Ք��b��p�D�A���-�\�k���I��blipu�������׺b[��ՊO��=,a����,ai���O.%���Ĳ���.MȖ�Pn��>�u����(�`�}      5      x������ � �      �   �  x�]SA��0<{^�,�a`��e&��hQ"���2�đ�&�)��}�j����/d#�D������W0?OOA+؀9��uӋ�h��v�+g��P0Ym�$+EY݉�NH.�I�kW�O6���I]�5Q*�#r�*:�ga��8��+ؾM���[s)O�N���!������T�4���z�_�<���+��C����Z���<U��=����c��2�wo�ޣ�u�5�B��tdF)
!�~�&��i?���7 �h#��>}�.˾bL�O��0�����ru)/��^�KR��^7�;�1�{�_}��/jtO��Z�GO�h�GKۦ�'h�4A�}?��� ����k���dA��K44�M��Ļ8sȼ�9'Mv�����7唕��������pLQz��;�8n-H�!�߲3Lϔ
��qCH��Dk|�9CEz�<��]'�v�N�9f�`��/��f�%.Dz�}НҪ���W*�`�ڄh��?��n��/ )            x������ � �      �   /   x�Ź  ����K�م�� 5J�J�����p1���6�oQ�'�      �   �  x�]�Kn�0���Sp_��Ӓw~4Z؀aY�L$:!@�.)9�o�dQ��X��,��Y0g>�����Br����h��l�����§0��~�aӿRr�s���Q[̍��Ξ������A�U�Y�ew��)�� ����¶����Bv_k>O�$��`y�J��Аm5�LX�ɸ�
{��z^ B����K�v��b��^1��A�(aS	˾r��7�w�4��Q��0�nCA �(��Ā�f��ݫD��ڃ�[� #x�9Ysa�,�V�-yc�wd����Q;�Wl��(#��,�Q}ϋ�@#pq���7���6%������xܰ}%Z���1�:�ź�	� $G�!���|��.���#��-�;�	�^�$���D:\���4ȺI��p@��	I%2T�sj�8�:̥!;�Iۜo��$ݰ�ᅨ
�������L�GM��h�����c���5e:��6��U�M�Da)��T,������W��8�Fv� '0���̸V!I�m��l�sX�ொS霋늓�M�Oa/24T��6TU۾�����J7�9�T���R�i���F27����z��0������ﵺ�o��;�$}�]��p�4�����nzPV�ڲ9)�w��s:�L���         �   x�M�KN�0�ur��@+�IdWh�8 ���T�'��@��P���ᔈD���/���^�\����{�@��-�4-a��3���}f��vJ��P+�FnV�����J������Xl��',b��'�m@Z׺��b��e ���ϐ���^��t>]g�%nT��˛Z��1{�l{:-�%`�Q��(0��'����� }W�ޫ=eG�4�\�]�����c���Nב�,A�/������V���      H      x�+N)�4�*N�4����� #LU      V   A   x��K
�0���a?�q3�.RZ�zz�[�Kf�,�a���W�;�҅��5x#͑у�B���         #   x�3�L.������2�,N�I��L�H����� v��         �  x��UK�7]�O�4j��3K� N1���.�6-�A�:d� �6>�,�A�#�?�d!�Y$��ޫb%>6���ܒ��o�Q$k-�y�����i�#����� ;�r��-�Jٲ�,�rO'��nD�� ���X��^cO������kk��Ǎr�L�pbk��:I�6N)]���V<è�2�ğN��:��{���O�lԒ��S)�{Ӱ�HV�wZ�ٚ�����=����=)��HǂxZw�+9�j�1�_�Z���ҡ�!!�!��{@x��y@e����h�E�<�Fv�|�X݋o��F����H`4�S)J��gз�_ɝE�C�m��䎛�dk�?:r<�T=���;(E
�%z���^�"���1������nU|�� ���2�8���8�uP�k`V�+"���5&ؕ~E--e,9 v#����*��LҐ/����M��[��'��+�?�:ӑU#9W4e�O�30��'x#��!��+�h�}K����NK6b����TӜ��}Q��/���A���"\�@Jk$���r����w7�*�^U�9õϹ�fÞ�o'4���qą҉�����^@ԫ^P�:�G��z�
�]��yO�����z�no'�)��	8�4���D1~u�(�|ZF��Z��'i�ɧ?���Q�a��t�OK5���AӰ̓�])��s���+�^lF��/\�US��GA`�`��.��\�wP
f�4�0�.ba|T���ob�]��`�#~Lr+��!	���3�������_���><|4�_M�ˉ��� ���ŧavg�"�KS$-o=4� 6�\�8��31�����&6�ؤWel��BR���ޱ7��m��(���b-D����*?���o�>��8�y�#��335k~Q�_7EQ�l��      1   o  x�m�1N�@���)|��H@Aͮ@�@ vE����F�q�I"x�� �����֓�ZQPe�����=9�¯l	�#�G\��ZH�����`�j9�G�Ab�pG�^�@� WId��sFP�ޥ�;x&[��l�����@�/Z��6�P�6<���k}q����S�d�"F*�yxО����w,.���&�iTY�^?c��=�(�:���?���s�Z��Z\㑜F��T�����ty
Ԇ�I���+L�Fߥ4���.�Fv3�0�"�|��;�i�0β��aC�B��m�B�9�6���[�tz�z�kf��r�	[��=Nq\��OO�6\��'l;�oT�_����~�/�:j�P���6M��8��         G  x�u��n�0�g�)覂�D�t�ݟ1�:A�,�2�`D��S�o�1C�>�_���)9��	��G�{��e����u�,�Z�J�FR%'K�lv������@��8g�+X��^��s!�J�'T�[`K��x�=09a�JN���Xd�3��cJKr��߆�A�B��^C���E7�"?z�aA��FeU�q�c��Hbw���)��Cf���7���Ik0��1*�Bf�^՝X�*��>�{����>����&�.!�bО8������n�!�^2z!x!T7����d�9rdBFu	#�,��=�w����*y*Jr��n \�i��T�)�����Ӗ}�F7��5�%BUQ�Aq�`�I��9a+:�|uOq�Ko���ǘ���E�������Ҍ�,x+*8�;�_�-���+�9!ϓw��|2"y���L1Cno���z�d_��!�yzeK܈Ǖd}�\s<��������BU!U�^���I��sI��[td��-<'�&E�����ZfsD�=�:���1$7�K�w�ǇX���"`F���i]Ĳ�ɝ��7l�4x����z�]h�"��l.��GJ�?�?\      -      x������ � �      T   r   x�-��
�0����X��*>G�^�h�ن��ħ7��3Q��HYmÍ�f�c{������!jjt��]�&jK�+��RPkm	��4�z&��WI੏��|�o���~m�%�      G      x������ � �      C      x������ � �         �   x�u���0E�ӯ�H)��UF�Y7n
��A�V�oZcb$n�{o&��Ӟ���ҚꚂ
I'�PA�!�L�\u�;'��a�G3eɀ�`�_���%�%0����CC�*K}i��������jz��CU����1,��-�x�n�g#�7ԟ���1d�� +,X�      /      x������ � �         �   x�m�MJA�ׯO1'�DM4�Ip!����J��f�*���2�q1��s�c�m��}��cA��w����������%������"�0�\S��V ߦk�<o��ZŘW�>�]c�/��|�$�!�K�ڊ&!z��_Z)���P�=�8�h����<-�mn���N���bL�Vh������L����O�~Sެ4��i@�|�p�}�|l�            x������ � �     