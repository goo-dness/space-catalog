--
-- PostgreSQL database dump
--

\restrict 1NawyIHLBd1BMNFQzT9OekuPSGcOxj9FZ2UeCdSxwMrXfNjLotdYHbMCrSmbRG1

-- Dumped from database version 18.3 (Debian 18.3-1.pgdg13+1)
-- Dumped by pg_dump version 18.4 (Ubuntu 18.4-1.pgdg24.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: agencies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.agencies (
    id integer NOT NULL,
    name character varying NOT NULL,
    abbreviation character varying,
    country character varying,
    year_found integer,
    active boolean,
    image_url character varying,
    description character varying,
    headquarters character varying,
    missions_count integer,
    website character varying,
    african_relevance character varying,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.agencies OWNER TO postgres;

--
-- Name: agencies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.agencies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.agencies_id_seq OWNER TO postgres;

--
-- Name: agencies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.agencies_id_seq OWNED BY public.agencies.id;


--
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO postgres;

--
-- Name: messier_objects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.messier_objects (
    id integer NOT NULL,
    name character varying NOT NULL,
    messier_number integer,
    ngc_number character varying,
    object_type character varying,
    constellation character varying,
    distance_light_years double precision,
    apparent_magnitude double precision,
    right_ascension character varying,
    image_url character varying,
    declination character varying,
    description character varying,
    fun_facts character varying,
    african_context character varying,
    discovery_year integer,
    discovered_by character varying,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.messier_objects OWNER TO postgres;

--
-- Name: messier_objects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.messier_objects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.messier_objects_id_seq OWNER TO postgres;

--
-- Name: messier_objects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.messier_objects_id_seq OWNED BY public.messier_objects.id;


--
-- Name: planets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.planets (
    id integer NOT NULL,
    name character varying NOT NULL,
    mass double precision,
    radius double precision,
    distance_from_sun double precision,
    orbital_period double precision,
    has_rings boolean,
    number_of_moons integer,
    surface_gravity double precision,
    temperature double precision,
    description character varying,
    fun_facts character varying,
    image_url character varying,
    visible_from_nigeria boolean,
    naked_eye_view boolean,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    is_exoplanet boolean,
    host_star character varying,
    discovery_method character varying,
    discovery_year integer,
    distance_from_earth_ly double precision,
    african_context text
);


ALTER TABLE public.planets OWNER TO postgres;

--
-- Name: planets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.planets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.planets_id_seq OWNER TO postgres;

--
-- Name: planets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.planets_id_seq OWNED BY public.planets.id;


--
-- Name: stars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stars (
    id integer NOT NULL,
    name character varying NOT NULL,
    designation character varying,
    constellation character varying,
    description character varying,
    fun_facts character varying,
    distance_light_years double precision,
    star_type character varying,
    magnitude double precision,
    right_ascension character varying,
    image_url character varying,
    african_names jsonb,
    cultural_significance text,
    traditional_uses jsonb,
    seasonal_associations text,
    mythological_context text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.stars OWNER TO postgres;

--
-- Name: stars_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stars_id_seq OWNER TO postgres;

--
-- Name: stars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stars_id_seq OWNED BY public.stars.id;


--
-- Name: agencies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agencies ALTER COLUMN id SET DEFAULT nextval('public.agencies_id_seq'::regclass);


--
-- Name: messier_objects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messier_objects ALTER COLUMN id SET DEFAULT nextval('public.messier_objects_id_seq'::regclass);


--
-- Name: planets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planets ALTER COLUMN id SET DEFAULT nextval('public.planets_id_seq'::regclass);


--
-- Name: stars id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stars ALTER COLUMN id SET DEFAULT nextval('public.stars_id_seq'::regclass);


--
-- Data for Name: agencies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agencies (id, name, abbreviation, country, year_found, active, image_url, description, headquarters, missions_count, website, african_relevance, created_at, updated_at) FROM stdin;
1	National Space Research and Development Agency	NASRDA	Nigeria	1999	t	\N	Nigeria`s national space agency responsible for space research, satellite development, and space technology applications for national development.	Abuja, Nigeria	8	https://nasrda.gov.ng	Africa`s most active space agency in West Africa. Launched NigeriaSat-1 in 2003, making Nigeria one of the first African nations with an earth observation satellite. Drives space technology adoption across West Africa and promotes regional space cooperation.	2026-05-05 22:54:02.849262+00	2026-05-05 22:54:02.849277+00
2	South African National Space Agency	SANSA	South Africa	2010	t	\N	South Africa`s national space agency responsible for space science, earth observation, and satellite development. Focuses on using space technology for socio-economic development and scientific research.	Pretoria, South Africa	5	https://www.sansa.org.za	Africa`s leading space agency in Southern Africa. Operates the SumbandilaSat earth observation satellite and contributes to global space science research. Promotes regional space cooperation and capacity building across Africa.	2026-05-05 22:54:02.849287+00	2026-05-05 22:54:02.849292+00
3	Egyptian Space Agency	EgSA	Egypt	2017	t	\N	Egypt`s national space agency building on ancient Egyptian astronomical heritage to develop modern space capabilities for the African continent.	Cairo, Egypt	3	https://egsa.gov.eg	Emerging space agency in North Africa. Launched EgyptSat-1 in 2019, marking Egypt`s entry into space. Posiioned as the leading space agency in North Africa. Ancient Egyptian astronomical tradition - among the oldest in human history - provides a unique cultural foundation for Egypt`s modern space ambitions.	2026-05-05 22:54:02.849297+00	2026-05-05 22:54:02.8493+00
4	National Aeronautics and Space Administration	NASA	United States	1958	t	\N	The United States` national space agency responsible for space exploration, scientific research, and technology development. NASA has been a pioneer in space exploration, launching numerous missions to explore the solar system and beyond.	Washington, D.C., United States	800	https://www.nasa.gov	While not an African space agency, NASA has had a significant impact on space exploration globally, including in Africa. NASA has collaborated with African space agencies on various projects and has provided support for space science education and capacity building in Africa. NASA`s technological advancements and scientific discoveries have inspired many in Africa to pursue careers in space science and technology. NASA operates ground stations in Africa, including in South Africa and Ghana. Partners with NASRDA and SANA on earth observation programs. Katherin Johnson, Dorothy Vaughan and Mary Jackson - African American women were critical to NASA`s early space missions, including the Apollo program. Their contributions have been widely recognized and celebrated, inspiring generations of African and African American scientists and engineers.	2026-05-05 22:54:02.849305+00	2026-05-05 22:54:02.849309+00
5	European Space Agency	ESA	Europe	1975	t	\N	An intergovernmental organization 22 member states dedicated to the exploration of space.. ESA conducts a wide range of missions, including earth observation, planetary exploration, and human spaceflight programs.	Paris, France	350	https://www.esa.int	Operates a tracking station in Malindi, Kenya - one of its oldest ground stations globally. Partners with African agencies on earth observation for climate monitoring, agriculture, and disaster response across the continent.	2026-05-05 22:54:02.849314+00	2026-05-05 22:54:02.849318+00
6	Indian Space Research Organisation	ISRO	India	1969	t	\N	India`s national space agency known for cost-effective space missions including the Mars Orbiter Mission and Chandrayaan lunar missions.	Bengaluru, India	130	https://www.isro.gov.in	Launched satellites for Algeria, Egypt and other African nations. ISRO`s low-cost mission model is directly relevant to Africsn soace ambitions- demonstrating that space capability is achievable without Western-scale budgets.	2026-05-05 22:54:02.849322+00	2026-05-05 22:54:02.849326+00
7	China National Space Administration	CNSA	China	1993	t	\N	China`s national space agency responsible for space exploration, satellite development, and human spaceflight. CNSA has rapidly expanded its capabilities and has ambitious plans for lunar and Mars exploration.	Beijing, China	250	https://www.cnsa.gov.cn	Built and launch satellites for Niigeria, Ethiopia, and Algeria. Operates ground stations in Namibia an Kenya. China`s space partnerships with Africa are growing rapidly as part of Belt and Road infrastructure investments.	2026-05-05 22:54:02.84933+00	2026-05-05 22:54:02.849334+00
8	Russian Federal Space Agency	Roscosmos	Russia	1992	t	\N	Russia`s state space cooperation responsible  for space flights, rocket engines, and launch vehcles.	Moscow, Russia	400	https://www.roscosmos.ru	Launch early African satellites including EgyptSat-1 series. Soviet-era space program trained several African scientists and engineers during the Cold War - part of the largely undocumented history of African space education.	2026-05-05 22:54:02.849338+00	2026-05-05 22:54:02.849342+00
9	Japan Aerospace Exploration Agency	JAXA	Japan	2003	t	\N	Japan`s national aerospace and space agency responsible for research, technology development, and launch of satellite and space exploration missions.	Tokyo, Japan	180	https://www.jaxa.jp	Partners with Kenya o space education through the KiboCUBE program - giving  African universities access to deploy small satellites from the International Space Station. First African satellite deployed through this program was from Uganda in 2019	2026-05-05 22:54:02.849347+00	2026-05-05 22:54:02.84935+00
10	Canadian Space Agency	CSA	Canada	1989	t	\N	Canada`s national space agency responsible for space exploration, satellite development, and human spaceflight.	Saint-Hubert, Quebec, Canada	120	https://www.asc-csa.gc.ca	Canadian satellite technology used for tracking deforestation and land use change across the Congo Basin — the world's second largest rainforest.	2026-05-05 22:54:02.849353+00	2026-05-05 22:54:02.849356+00
\.


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alembic_version (version_num) FROM stdin;
8cf9c2fc89ae
\.


--
-- Data for Name: messier_objects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.messier_objects (id, name, messier_number, ngc_number, object_type, constellation, distance_light_years, apparent_magnitude, right_ascension, image_url, declination, description, fun_facts, african_context, discovery_year, discovered_by, created_at, updated_at) FROM stdin;
1	Crab Nebula	1	NGC 1952	Supernova Remnant	Taurus	6523	8.4	05h 34m 31.94s	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSe0h4O21q-jo5xw79d3DudaxhXGPhfsMl8sA&s	+22° 00′ 52.2″	The Crab Nebula is the remnant of a supernova explosion observed in 1054 CE. It is one of the most studied objects in the night sky and contains a pulsar at its center.	The supernova that created the Crab Nebula was so bright that it was visible in daylight for 23 days and was recorded by astronomers in China, Japan, and the Middle East in 1054 CE.	Arab astronomers - whose work was deeply rooted in Norht African and Middle Eastern scholarship - were among the first to document the supernova that created the Crab Nebula, contributing to our understanding of this celestial event.	1731	John Bevis	2026-05-05 22:54:08.316503+00	2026-05-05 22:54:08.316515+00
2	Butterfly Cluster	6	NGC 6405	Open Star Cluster	Scorpius	1600	4.2	17h 40m 20s	https://media.sciencephoto.com/image/c0608492/225	-32° 15′ 12″	The Butterfly Cluster is an open cluster of stars that resembles the shape of a butterfly. It contains around 100 stars and is located in the constellation Scorpius.	The Butterfly Cluster is also known as Messier 6 (M6) and was discovered by the Italian astronomer Giovanni Battista Hodierna before Charles Messier cataloged it in 1764.	Located in Scorpius - one of the most culturally sgnificant constellations across sub-Saharan African . Scorpius rising marked agricultural seasons across East and southern Africa. THis cluster sits within a constellation that African farmers tracked for thousands of years.	1654	Giovanni Battista Hodierna	2026-05-05 22:54:08.316521+00	2026-05-05 22:54:08.316525+00
3	Ptolemy Cluster	7	NGC 6475	Open Star Cluster	Scorpius	980	3.3	17h 53m 51s	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTf5OK7_GxN_uzI-9-c88uBjMYXRuKTcT18Lw&s	-34° 47′ 36″	One of the prominent open clusters in the night sky, the Ptolemy Cluster is visible to the naked eye and contains around 80 stars and one of the oldest recorded star clusters, observed by the ancient Greek astronomer Ptolemy in the 2nd century CE.	Named after the Greco-Egyptian astronomer Claudius Ptolemy who described it in 130 CE. One of the nearset open clusters to Earth.	Named after Ptolemy who lived in Alexandria, Egypt - a major center of learning and astronomy in the ancient world. The Ptolemy Cluster was likely observed by Egyptian astronomers long before Ptolemy's time, contributing to the rich astronomical heritage of North Africa.	130	Claudius Ptolemy	2026-05-05 22:54:08.316527+00	2026-05-05 22:54:08.316531+00
4	Wild Duck Cluster	11	NGC 6705	Open Star Cluster	Scutum	6120	5.8	18h 51m 05s	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl1Clajsb7vwpIXjno8b2DxwiqD65xqYWkTQ&s	-06° 16′ 12″	The Wild Duck Cluster is an open cluster of stars that contains around 3000 stars. It is located in the constellation Scutum and is named for its resemblance to a flock of wild ducks flying in formation.	Contains nearly 3000 stars packed into a relatively small area of the sky, making it one of the richest open clusters known. The cluster's name comes from its appearance, which resembles a flock of wild ducks flying in formation.	Bird symbolism is deeply embedded in African cosmologies from the Egyptian Bennu bird to the sacred ibis. The wild duck cluster's bird association may carry parallel symbolic resonance in West and Central African astronomical traditions.	1681	Gottfried Kirch	2026-05-05 22:54:08.316534+00	2026-05-05 22:54:08.316536+00
5	Omega Nebula	17	NGC 6618	Emission Nebula	Sagittarius	5000	6	18h 36m 57s	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsALRJCHYxJ41Y0y7UM_6XRL9Els7gBfwqvQ&s	-16° 10′ 36″	A massive star forming region and emission nebula, one of the brightest and most massive in the Milky Way galaxy.	The Omega Nebula is also known as M17 or the Swan Nebula. Contains enough gas and dust to form 800 stars the size of our Sun. One of the yougest and most active star forming regions in the galaxy.	Located in Sagittarius which points toward the galactic center. Ancient Egyptian and Dogon cosmological traditions both oriented significant mythological frameworks around the galactic center direction. The star forming activity in this region connects to creation mythology present across multiple African traditions.	1745	Philippe Loys de Chéseaux	2026-05-05 22:54:08.316539+00	2026-05-05 22:54:08.316542+00
6	Trifid Nebula	20	NGC 6514	Emission and Reflection Nebula	Sagittarius	5200	6.3	18h 02m 23s	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlXQdHBc8BcD3Z4kNqQId1X6cIv6r95plbZw&s	-23° 01' 48	A combination emission, reflection, and dark nebula divided into three lobes by dark dust lanes — giving it its trifid name.	One of the youngest nebulae known — only 300,000 years old. Contains a young star cluster still forming inside it. The three-part division is caused by dark dust absorption lanes.	The three-part symbolic structure has resonance in several African cosmological frameworks. Sagittarius direction toward galactic center was significant in ancient Egyptian astronomical orientation.	1764	Charles Messier	2026-05-05 22:54:08.316544+00	2026-05-05 22:54:08.316546+00
7	Andromeda Galaxy	31	NGC 224	Spiral Galaxy	Andromeda	2537000	3.44	00h 42m 44s	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToK_mA55LUi9LVZzG2tjVpGh1AcIh50bpHcg&s	+41° 16' 09	The nearest large galaxy to the Milky Way and the most distant object visible to the naked eye. A spiral galaxy containing approximately one trillion stars.	On a collision course with the Milky Way — will merge in approximately 4.5 billion years. Contains over one trillion stars compared to the Milky Way's 200-400 billion. Was thought to be a nebula within our galaxy until Edwin Hubble proved otherwise in 1925.	Arab astronomers in North Africa documented this object as early as 964 CE — Abd al-Rahman al-Sufi described it as a small cloud in his Book of Fixed Stars, written in Persia but deeply rooted in the Greco-Islamic astronomical tradition that flourished across North Africa. This is the oldest recorded observation of a galaxy beyond our own.	964	Abd al-Rahman al-Sufi	2026-05-05 22:54:08.316549+00	2026-05-05 22:54:08.316551+00
8	Triangulum Galaxy	33	NGC 598	Spiral Galaxy	Triangulum	2730000	5.72	01h 33m 51s	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfalo7rWiEQDf8Yo3Dhk4c1YnF1ibnFCZtzA&s	+30° 39' 37	The third largest galaxy in the Local Group after the Milky Way and Andromeda. A spiral galaxy with active star formation.	One of the most distant objects visible to the naked eye under perfect dark sky conditions. Contains a massive star forming region called NGC 604 — 100 times larger than the Orion Nebula.	As part of the Local Group alongside Andromeda, ancient African astronomers who documented Andromeda may have also noted this object under dark African skies far from modern light pollution.	1654	Giovanni Battista Hodierna	2026-05-05 22:54:08.316554+00	2026-05-05 22:54:08.316556+00
9	Orion Nebula	42	NGC 1976	Emission Nebula	Orion	1344	4	05h 35m 17s	https://th-thumbnailer.cdn-si-edu.com/sL2WGV9RuOtlt_6QR4mGB9SGKUE=/fit-in/1600x0/filters:focal(1133x1448:1134x1449)/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer_public/32/5c/325cb983-e7a8-4803-9a3c-62da610c858c/orion.png	-05° 23' 28	The closest massive star forming region to Earth and one of the most studied objects in the sky. Visible to the naked eye as a fuzzy star in Orion's sword.	New stars and planetary systems are forming inside it right now. Contains the Trapezium — four massive young stars whose radiation illuminates the entire nebula. Over 700 stars in various stages of formation have been observed within it.	Located in Orion — called Sah in ancient Egyptian tradition, representing Osiris. The nebula sits in the sword region of Sah. Ancient Egyptians observing Orion across thousands of years would have seen this fuzzy patch as part of the divine body of Osiris — the god of resurrection. One of the most cosmologically significant objects in African astronomical heritage.	1610	Nicolas-Claude Fabri de Peiresc	2026-05-05 22:54:08.316558+00	2026-05-05 22:54:08.31656+00
10	Whirlpool Galaxy	51	NGC 5194	Spiral Galaxy	Canes Venatici	23000000	8.4	13h 29m 53s	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrUeIefcAwLhQbW5YJhri8QN3qXdpZmQt6Gg&s	+47° 11' 43	A grand design spiral galaxy interacting with its smaller companion galaxy NGC 5195. One of the most visually striking galaxies in the sky.	First galaxy in which spiral structure was observed — by Lord Rosse in 1845. Currently merging with its companion galaxy NGC 5195. Contains hundreds of billions of stars.	The spiral form has symbolic resonance in several African artistic and cosmological traditions. The concept of two bodies in gravitational interaction — merging over cosmic time — has philosophical parallels in African relational cosmologies.	1773	Charles Messier	2026-05-05 22:54:08.316563+00	2026-05-05 22:54:08.316565+00
11	Sunflower Galaxy	63	NGC 5055	Spiral Galaxy	Canes Venatici	29000000	8.6	13h 15m 49s	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHYKqMGeF1Zh7705TLFMEM90pinyMMH8wCFQ&s	+42° 01' 45	A spiral galaxy with a distinctive patchy appearance caused by dust lanes and star forming regions across its spiral arms, resembling a sunflower.	One of the earliest discovered galaxies to show a flocculent spiral structure — meaning its arms are patchy and irregular rather than smooth. Part of the M51 galaxy group.	The sunflower — helianthus — while originating in the Americas, connects to solar symbolism deeply embedded in African cosmology. Egyptian solar worship centered on Ra and Aten. The galaxy's resemblance to a radial solar form carries resonance with African sun cosmologies.	1779	Pierre Méchain	2026-05-05 22:54:08.316567+00	2026-05-05 22:54:08.31657+00
12	Bode's Galaxy	81	NGC 3031	Spiral Galaxy	Ursa Major	11800000	6.94	09h 55m 33s	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCm7OSnLUa3EjPGBy_gvidPOmsRRWw9YoG0A&s	+69° 03' 55	One of the brightest galaxies in the sky and the dominant member of the M81 galaxy group. A grand design spiral galaxy with a supermassive black hole at its center.	Contains a supermassive black hole 70 million times the mass of our Sun — one of the most massive black holes known in a nearby galaxy. One of the best studied galaxies due to its proximity and brightness.	Research needed. The concept of a supermassive gravitational center — a black hole of enormous mass — has philosophical resonance with cosmological concepts of a primal center or source present in several African cosmological frameworks including Dogon cosmology which centers on Sirius as a gravitational anchor.	1774	Johann Elert Bode	2026-05-05 22:54:08.316572+00	2026-05-05 22:54:08.316574+00
13	Cigar Galaxy	82	NGC 3034	Starburst Galaxy	Ursa Major	11500000	8.41	09h 55m 52s	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMek57CGA01VlMdPkqlp88SWNexuOvlS7pKg&s	+69° 40' 47	An irregular starburst galaxy currently undergoing an intense episode of star formation driven by gravitational interaction with neighboring M81.	Forming stars at a rate ten times faster than the Milky Way. Superwinds of hot gas are blowing out perpendicular to the galaxy's disk at millions of kilometers per hour. A mysterious radio signal of unknown origin was detected from M82 in 2010.	The concept of intense creative energy — explosive creation driven by gravitational relationship — has resonance in African creation cosmologies, particularly those centered on dynamic relational forces rather than static origins.	1774	Johann Elert Bode	2026-05-05 22:54:08.316577+00	2026-05-05 22:54:08.316579+00
14	Southern Pinwheel Galaxy	83	NGC 5236	Spiral Galaxy	Hydra	14700000	7.54	13h 37m 00s	https://cdn.eso.org/images/screen/m83.jpg	-29° 51' 57	A barred spiral galaxy and one of the closest and brightest barred spirals in the sky. Notable for its high rate of supernova explosions.	Has hosted six observed supernovae since 1923 — more than almost any other galaxy. Located close enough to the south celestial pole to be visible from across the entire African continent.	One of the most Africa-relevant galaxies in the Messier catalog — visible from the entire African continent due to its southern declination. Six supernovae observed in modern times means ancient African observers under dark skies likely witnessed dramatic brightness changes in this region of sky across generations.	1752	Nicolas Louis de Lacaille	2026-05-05 22:54:08.316582+00	2026-05-05 22:54:08.316584+00
15	Sombrero Galaxy	104	NGC 4594	Spiral Galaxy	Virgo	31100000	8.98	12h 39m 59s	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqnSii2eTyoRoCs7LUgW97KopOkWVH2ECS7A&s	-11° 37' 23	A spiral galaxy with a large central bulge and prominent dust lane giving it the appearance of a wide-brimmed hat when viewed edge-on.	Contains a supermassive black hole one billion times the mass of our Sun — among the most massive known. Has an unusually large and bright central bulge containing a high concentration of ancient stars.	Research needed. The sombrero form — a wide brimmed hat — connects symbolically to several West African traditional headwear forms associated with royalty and spiritual authority. The galaxy's prominent central bulge surrounded by a flat disk mirrors cosmological representations of a central divine authority surrounded by creation in several African traditions.	1781	Pierre Méchain	2026-05-05 22:54:08.316586+00	2026-05-05 22:54:08.316588+00
37	Open Cluster M34	34	NGC 1039	Open Star Cluster	Perseus	1500	5.5	02h 42.1m	https://upload.wikimedia.org/wikipedia/commons/6/6d/Messier_34_2MASS.jpg	+42° 46'	A bright open cluster containing about 400 stars.	The stars in M34 are roughly the same age as our Sun's neighbors in the Pleiades.	Found in Perseus, a region associated in some North African traditions with the protection of travelers.	1654	Giovanni Battista Hodierna	2026-05-11 21:09:06.831702+00	2026-05-11 21:09:06.831704+00
39	Pinwheel Cluster	36	NGC 1960	Open Star Cluster	Auriga	4100	6	05h 36.2m	https://upload.wikimedia.org/wikipedia/commons/8/87/Messier_36_DSS.jpg	+34° 08'	A bright cluster of young stars that are much larger and hotter than our Sun.	Because the stars are so young (25 million years), they have not yet had time to drift apart.	Auriga is high in the West African sky during the harmattan season; these clusters appear as shimmering 'dust' in the cold night air.	1654	Giovanni Battista Hodierna	2026-05-11 21:09:06.83171+00	2026-05-11 21:09:06.831712+00
40	Salt-and-Pepper Cluster	37	NGC 2099	Open Star Cluster	Auriga	4500	5.6	05h 52.3m	https://upload.wikimedia.org/wikipedia/commons/a/ad/Messier_37_DSS.jpg	+32° 33'	The brightest of the three open clusters in Auriga, containing over 500 stars.	It contains about a dozen red giant stars, indicating it is older than its neighbor M36.	Its 'salt and pepper' look has a visual parallel with traditional West African beadwork—scattered but forming a cohesive pattern.	1654	Giovanni Battista Hodierna	2026-05-11 21:09:06.831714+00	2026-05-11 21:09:06.831716+00
41	Star-Fish Cluster	38	NGC 1912	Open Star Cluster	Auriga	4200	6.4	05h 28.7m	https://upload.wikimedia.org/wikipedia/commons/3/30/Messier_38_DSS.jpg	+35° 51'	An open cluster with a cross-like shape that some observers say looks like a starfish.	The stars in this cluster are arranged in patterns that resemble the Greek letter Pi.	Marine motifs like the starfish resonate with coastal African communities from Lagos to Cape Town who looked to the sky for tidal markers.	1654	Giovanni Battista Hodierna	2026-05-11 21:09:06.831718+00	2026-05-11 21:09:06.83172+00
42	Winnecke 4	40	WNC 4	Double Star	Ursa Major	510	8.4	12h 22.2m	https://upload.wikimedia.org/wikipedia/commons/f/f6/Messier_40_SDSS.jpg	+58° 05'	A optical double star that Messier mistakenly included thinking it was a nebula.	It is widely considered the most 'boring' Messier object because it's just two stars, not a cluster or nebula.	Located in the Great Bear; while the bear is not native to most of Africa, the stars were used for latitude tracking across the Sahel.	1764	Charles Messier	2026-05-11 21:09:06.831723+00	2026-05-11 21:09:06.831725+00
36	Andromeda Satellite M32	32	NGC 221	Dwarf Elliptical Galaxy	Andromeda	2490000	8.1	00h 42.7m	https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/galaxies/elliptical/Hubble_M32_str2_flat_FINAL_NewImage.jpg?fit=clip&crop=faces%2Cfocalpoint&w=300	+40° 52'	A small satellite galaxy of the much larger Andromeda Galaxy.	M32 was the first elliptical galaxy ever discovered.	Visible only through telescopes or very dark skies like those in the Sahara, where its proximity to M31 creates a distinct 'double-cloud' appearance.	1749	Guillaume Le Gentil	2026-05-11 21:09:06.831698+00	2026-05-11 23:02:00.681623+00
38	Open Cluster M35	35	NGC 2168	Open Star Cluster	Gemini	2800	5.1	06h 09.1m	https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/stars/open-clusters/Hubble_M35_WFPC2ok_flat_FINAL1.jpg?fit=clip&crop=faces%2Cfocalpoint&w=300	+24° 21'	A large cluster covering an area of the sky as large as the full moon.	It has a smaller, more distant cluster (NGC 2158) appearing right next to it, creating a 3D perspective of the galaxy.	In Nigerian Yoruba cosmology, Gemini stars are sometimes linked to the concept of 'Ibeji' or twins, making this cluster part of a culturally significant sky region.	1745	Jean-Philippe de Cheseaux	2026-05-11 21:09:06.831706+00	2026-05-11 23:02:00.681625+00
43	Pleiades	45	None	Open Star Cluster	Taurus	444	1.6	03h 47.4m	https://science.nasa.gov/wp-content/uploads/2023/04/interstellar_cloud_in_pleiades-jpg.webp?w=1024	+24° 07'	The 'Seven Sisters'—the most famous open cluster in the sky, visible to the naked eye.	The cluster is used as the logo for the car company Subaru (which is the Japanese name for the Pleiades).	Incredibly significant across Africa. The 'Isilimela' (Xhosa/Zulu) or 'Selemela' (Sotho/Tswana) marked the beginning of the planting season. Its appearance is a foundational astronomical event for African agriculture.	-3000	Known since antiquity	2026-05-11 21:09:06.831727+00	2026-05-11 23:02:00.681627+00
97	Spiral Galaxy M100	100	NGC 4321	Spiral Galaxy	Coma Berenices	55000000	10.1	12h 22m 55s	https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/releases/2018/12/STScI-01EVSYX5KXKD5N7E53PYXGQ5E4.tif?fit=clip&crop=faces%2Cfocalpoint&w=300	+15° 49′ 21″	One of the most beautiful and perfect face-on spiral galaxies in the sky.	It contains over 400 billion stars and has been the site of five recorded supernovae.	Often used to teach the concept of 'Galactic Neighborhoods' to students in Lagos and Abuja.	1781	Pierre Méchain	2026-05-11 21:09:06.832098+00	2026-05-11 23:02:00.681739+00
45	Open Cluster M47	47	NGC 2422	Open Star Cluster	Puppis	1600	4.4	07h 36.6m	https://upload.wikimedia.org/wikipedia/commons/c/c5/Messier_47_DSS.jpg	-14° 30'	A coarse, bright cluster of stars that is visible to the naked eye under dark skies.	M47 was a 'lost' Messier object for years because Charles Messier recorded its coordinates incorrectly in his original catalog.	Visible during the peak of the Nigerian dry season. Its brightness made it a reliable marker for late-night desert travel across the Sahel.	1654	Giovanni Battista Hodierna	2026-05-11 21:09:06.831735+00	2026-05-11 21:09:06.831737+00
48	Spiral Galaxy M50	50	NGC 2323	Open Star Cluster	Monoceros	2870	5.9	07h 02.8m	https://upload.wikimedia.org/wikipedia/commons/e/ea/Messier_50_DSS.jpg	-08° 23'	A pretty, heart-shaped open cluster of young, blue stars.	Most of the stars in M50 are young, hot blue stars, but there is at least one prominent red giant near the center.	Located in the 'Unicorn,' a modern constellation. However, the stars were part of the ancient sky mapped by the librarians of Timbuktu in their celestial manuscripts.	1711	G.D. Cassini	2026-05-11 21:09:06.831747+00	2026-05-11 21:09:06.831749+00
49	Globular Cluster M52	52	NGC 7654	Open Star Cluster	Cassiopeia	5000	6.9	23h 24.2m	https://upload.wikimedia.org/wikipedia/commons/d/d4/Messier_52_DSS.jpg	+61° 35'	A very rich, compressed open cluster. It is one of the more spectacular open clusters for small telescopes.	M52 is located very close to the Bubble Nebula (NGC 7635), making it a popular target for astrophotographers.	Visible in the far northern sky; North African observers used the 'W' shape of Cassiopeia to find the North Star for desert navigation.	1774	Charles Messier	2026-05-11 21:09:06.831751+00	2026-05-11 21:09:06.831753+00
69	Open Cluster M73	73	NGC 6994	Asterism	Aquarius	2500	9	20h 58m 55s	https://upload.wikimedia.org/wikipedia/commons/6/6d/Messier_73_DSS.jpg	-12° 38′ 07″	A small grouping of four stars that was originally thought to be a nebula by Messier.	Modern studies have shown these stars are at different distances and aren't actually related—making it an 'asterism' rather than a true cluster.	Small groupings like this were often used by expert navigators as 'miniature markers' to verify they were on the right path when following larger constellations.	1780	Charles Messier	2026-05-11 21:09:06.831903+00	2026-05-11 21:09:06.83191+00
87	Owl Nebula	97	NGC 3587	Planetary Nebula	Ursa Major	2030	9.9	11h 14m 47s	https://upload.wikimedia.org/wikipedia/commons/b/b2/Messier_97_Hubble.jpg	+55° 01′ 08″	A planetary nebula that appears as a faint, round glow with two darker patches that look like the eyes of an owl.	The nebula's appearance is caused by a shell of gas being viewed from an angle where we see into two 'cavities' blown out by the central star.	In various African folklore, the owl is a messenger of wisdom and a bridge to the spirit world. This nebula is the cosmic messenger.	1781	Pierre Méchain	2026-05-11 21:09:06.832006+00	2026-05-11 21:09:06.832008+00
90	Little Beehive	41	NGC 2287	Open Star Cluster	Canis Major	2300	4.5	06h 46m 00s	https://upload.wikimedia.org/wikipedia/commons/1/1d/Messier_41_2MASS.jpg	-20° 44′ 00″	A bright open cluster located near Sirius. It contains about 100 stars, including several red giants.	It is one of the oldest recorded deep-sky objects, potentially mentioned by Aristotle in 325 BC.	Because it sits 'at the feet' of Sirius, it is part of the most sacred sky region for the Dogon people of Mali.	1654	Giovanni Battista Hodierna	2026-05-11 21:09:06.832031+00	2026-05-11 21:09:06.832037+00
93	The Great Open Cluster	93	NGC 2447	Open Star Cluster	Puppis	3600	6	07h 44m 36s	https://upload.wikimedia.org/wikipedia/commons/e/e0/Messier_93_DSS.jpg	-23° 51′ 24″	A very dense and bright open cluster shaped like a wedge or a triangle.	Messier described it as a 'cluster of small stars without nebulosity.'	Found in the 'Stern' of the ship. For coastal West African navigators, these clusters helped guide night voyages.	1781	Charles Messier	2026-05-11 21:09:06.83206+00	2026-05-11 21:09:06.832066+00
101	Elliptical Galaxy M105	105	NGC 3379	Elliptical Galaxy	Leo	32000000	10.2	10h 47m 50s	https://upload.wikimedia.org/wikipedia/commons/6/6d/Messier_105_Hubble.jpg	+12° 34′ 54″	A bright elliptical galaxy in the Leo I group.	It contains a supermassive black hole with a mass of about 50 million Suns.	Helps students understand that not all galaxies are spirals; some are massive 'balls' of ancient stars.	1781	Pierre Méchain	2026-05-11 21:09:06.832126+00	2026-05-11 21:09:06.832128+00
16	Globular Cluster M2	2	NGC 7089	Globular Cluster	Aquarius	37500	6.3	21h 33m 27s	https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/stars/globular-clusters/Hubble_M2_potw1913a.jpg?fit=clip&crop=faces%2Cfocalpoint&w=300	-00° 49′ 24'	One of the largest known globular clusters, containing roughly 150,000 stars. It is notable for its high concentration of stars toward the center.	M2 is nearly 13 billion years old, making it almost as old as the universe itself.	Located in Aquarius, which ancient Egyptians associated with Hapi, the god of the Nile's annual flood. The rising of this region heralded life-giving waters.	1746	Jean-Dominique Maraldi	2026-05-11 21:09:06.831597+00	2026-05-11 23:02:00.681571+00
27	Webb's Cross	21	NGC 6531	Open Star Cluster	Sagittarius	4250	6.5	18h 04m 13s	https://www.google.com/imgres?q=webb%60s%20cross%20m21%20ngc%206531%20image&imgurl=https%3A%2F%2Flookaside.fbsbx.com%2Flookaside%2Fcrawler%2Fmedia%2F%3Fmedia_id%3D32503878442544521&imgrefurl=https%3A%2F%2Fwww.facebook.com%2Fvisualcortexpage%2Fposts%2Fmessier-21-or-m21-also-designated-ngc-6531-or-webbs-cross-is-an-open-cluster-of-%2F1269057081998339%2F&docid=fziCA0fMZpTdYM&tbnid=hrD5yI9RsBJBOM&vet=12ahUKEwjRgPnvmLKUAxUlXEEAHZRIICMQnPAOegQIFhAB..i&w=2048&h=1365&hcb=2&ved=2ahUKEwjRgPnvmLKUAxUlXEEAHZRIICMQnPAOegQIFhAB	-22° 29′ 24″	A relatively young open cluster located near the Trifid Nebula. It contains about 57 stars that formed from the same molecular cloud.	The cluster is only about 4.6 million years old, making it a 'nursery' in cosmic terms.	Located in the 'Teapot' asterism of Sagittarius. This region of the sky is central to many southern African stories about the 'Great River' (the Milky Way) and its hidden islands of stars.	1764	Charles Messier	2026-05-11 21:09:06.831661+00	2026-05-11 22:00:52.138305+00
29	Open Cluster M23	23	NGC 6494	Open Star Cluster	Sagittarius	2150	6.9	17h 57m 04s	https://www.google.com/imgres?q=open%20cluster%20m23%20image&imgurl=https%3A%2F%2Fstatic.wixstatic.com%2Fmedia%2Fd8a647_f9774a950b744479884cf28c6822a7cb~mv2.jpg%2Fv1%2Ffill%2Fw_864%2Ch_573%2Cal_c%2Cq_85%2Fd8a647_f9774a950b744479884cf28c6822a7cb~mv2.jpg&imgrefurl=https%3A%2F%2Fwww.galactic-hunter.com%2Fpost%2Fmessier-23&docid=h8JE486GZFZo8M&tbnid=kMv6imqGrgavwM&vet=12ahUKEwjNqPq9mbKUAxWMa0EAHWrcK5kQnPAOegQIHBAB..i&w=864&h=573&hcb=2&ved=2ahUKEwjNqPq9mbKUAxWMa0EAHWrcK5kQnPAOegQIHBAB	-19° 01′ 00″	A large, sprawling open cluster containing about 150 stars. It sits against the rich backdrop of the Milky Way's core.	M23 is nearly 20 light-years across, one of the wider open clusters in the Messier catalog.	Sagittarius is a high-overhead constellation in Nigeria during the rainy season. Tracking these clusters helped ancient West African observers note the seasonal shifts in the 'Great Spirit Path'.	1764	Charles Messier	2026-05-11 21:09:06.831669+00	2026-05-11 22:00:52.138309+00
31	IC 4725 Cluster	25	IC 4725	Open Star Cluster	Sagittarius	2000	4.6	18h 31m 47s	https://www.google.com/imgres?q=IC%204725%20Cluster%20image&imgurl=https%3A%2F%2Fgardenastronomer.com%2Fwp-content%2Fuploads%2F2025%2F09%2Fbanner-for-messier-20.jpg%3Fw%3D800%26h%3D600%26crop%3D1&imgrefurl=https%3A%2F%2Fgardenastronomer.com%2F2025%2F08%2F30%2Fmessier-25-ic-4725-a-scattered-jewel-in-sagittarius%2F&docid=fWNXs3lMNVpnxM&tbnid=pMETIei284Kt1M&vet=12ahUKEwjzjviHmrKUAxUnaEEAHbfpAb0QnPAOegQIMhAB..i&w=800&h=600&hcb=2&ved=2ahUKEwjzjviHmrKUAxUnaEEAHbfpAb0QnPAOegQIMhAB	-19° 07′ 00″	A bright open cluster that includes the variable star U Sagittarii.	Messier did not give this an NGC number because he missed its precise location; it was later added to the Index Catalogue (IC).	The visibility of M25 from the equator meant it was a reliable marker for North and East African navigators crossing desert and sea alike.	1745	Philippe Loys de Chéseaux	2026-05-11 21:09:06.831677+00	2026-05-11 22:00:52.138314+00
34	Cooling Tower Cluster	29	NGC 6913	Open Star Cluster	Cygnus	4000	7.1	20h 23m 56s	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRE-fTkxGScq4r_mwKWfK2znsNWWaOxbGFiaA&s	+38° 31′ 24″	A small, sparse cluster located in the rich star fields of the Cygnus 'Swan' constellation.	M29 is often obscured by interstellar dust, which makes it look much fainter than it actually is.	Cygnus is known as the Swan or the Bird. In various African traditions, large birds are messengers between the earth and the heavens.	1764	Charles Messier	2026-05-11 21:09:06.831689+00	2026-05-11 22:00:52.13832+00
17	Globular Cluster M3	3	NGC 5272	Globular Cluster	Canes Venatici	33900	6.2	13h 42m 11s	https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/stars/globular-clusters/Hubble_M3_2019_potw1914a.jpg?fit=clip&crop=faces%2Cfocalpoint&w=300	+28° 22′ 32″	A massive cluster of half a million stars, known for having a high number of variable stars.	The first Messier object discovered by Charles Messier himself (M1 and M2 were discovered by others).	Found in a region of sky that, for many Sahelian cultures, represented the 'void' or 'quiet' space before the bright stars of the harvest season rose.	1764	Charles Messier	2026-05-11 21:09:06.831617+00	2026-05-11 23:02:00.681587+00
18	Globular Cluster M4	4	NGC 6121	Globular Cluster	Scorpius	7200	5.6	16h 23m 35s	https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/stars/globular-clusters/Hubble_M4_WFC3_ACS_ok_flat_cont_FINAL_NewImage.jpg?fit=clip&crop=faces%2Cfocalpoint&w=300	-26° 31′ 31″	The closest globular cluster to our solar system. It features a unique central 'bar' structure of stars.	Contains white dwarf stars that are among the oldest known objects in the Milky Way.	Located near Antares in Scorpius. In South African Sotho tradition, stars in this area helped mark the transition into the cold winter months.	1746	Philippe Loys de Chéseaux	2026-05-11 21:09:06.831623+00	2026-05-11 23:02:00.681592+00
19	Globular Cluster M5	5	NGC 5904	Globular Cluster	Serpens	24500	5.7	15h 18m 33s	https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/stars/globular-clusters/Hubble_M5_WFC3_UV_flat_FINAL_NewImage.jpg?fit=clip&crop=faces%2Cfocalpoint&w=300	+02° 04′ 58″	One of the largest globular clusters in the Milky Way, spanning 165 light-years in diameter.	Its stars are approximately 13 billion years old, surviving multiple orbits around the galactic center.	Serpens is often linked to healing symbols. In ancient Egyptian medicine (Imhotep's lineage), the serpent symbolized both the threat of poison and the wisdom of the cure.	1702	Gottfried Kirch	2026-05-11 21:09:06.831627+00	2026-05-11 23:02:00.681594+00
20	Lagoon Nebula	8	NGC 6523	Emission Nebula	Sagittarius	4100	6	18h 03m 37s	https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/nebulae/emission/Hubble_M8_ACS_1_flat_FINAL.jpg?fit=clip&crop=faces%2Cfocalpoint&w=300	-24° 23′ 12″	A giant interstellar cloud and star-forming region. It is one of only two star-forming nebulae visible to the naked eye from mid-northern latitudes.	Contains 'Bok globules'—dark, collapsing clouds of protostellar gas and dust.	Visible in the southern sky above the great Zimbabwe ruins; such bright nebulae in the Milky Way's core were often seen as 'celestial smoke' or 'paths' in Bantu oral histories.	1654	Giovanni Battista Hodierna	2026-05-11 21:09:06.831632+00	2026-05-11 23:02:00.681597+00
21	Globular Cluster M9	9	NGC 6333	Globular Cluster	Ophiuchus	25800	7.7	17h 19m 11s	https://science.nasa.gov/wp-content/uploads/2023/04/heic1205a-jpg.webp?w=1024	-18° 30′ 58″	A globular cluster located near the galactic center, partially obscured by interstellar dust.	One of the closest globular clusters to the center of the Milky Way.	Ophiuchus, the serpent bearer, has historical ties to the wisdom-god Thoth in North Africa, representing the mastery over hidden knowledge.	1764	Charles Messier	2026-05-11 21:09:06.831636+00	2026-05-11 23:02:00.681599+00
22	Globular Cluster M10	10	NGC 6254	Globular Cluster	Ophiuchus	14300	6.6	16h 57m 08s	https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/stars/globular-clusters/Hubble_M10_WFC3UVIS_flat_FINAL_NewImage.jpg?fit=clip&crop=faces%2Cfocalpoint&w=300	-04° 05′ 58″	A medium-sized cluster with a very bright core, roughly 83 light-years across.	Despite its brightness, it contains relatively few variable stars compared to M3.	Similar to M9, its visibility in the equatorial band made it a constant feature for navigators across the Saharan trade routes.	1764	Charles Messier	2026-05-11 21:09:06.83164+00	2026-05-11 23:02:00.681601+00
23	Gumball Cluster	12	NGC 6218	Globular Cluster	Ophiuchus	15700	6.7	16h 47m 14s	https://science.nasa.gov/wp-content/uploads/2023/04/potw1113a-jpg.webp?w=1024	-01° 56′ 52″	A loosely packed globular cluster that was once much larger, but has lost many of its lower-mass stars to the gravitational pull of the Milky Way.	M12 is unique because it is 'missing' stars. It has lost nearly 1 million stars over its lifetime due to tidal stripping by our galaxy.	Ophiuchus is associated with the 'Serpent-Bearer.' In ancient Egyptian astronomy, this region was linked to the deity Imhotep, the architect and healer who was later deified and associated with the Greek Asclepius.	1764	Charles Messier	2026-05-11 21:09:06.831644+00	2026-05-11 23:02:00.681603+00
24	Great Hercules Cluster	13	NGC 6205	Globular Cluster	Hercules	25100	5.8	16h 41m 41s	https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/stars/globular-clusters/Hubble_M13_2010_potw1011a.jpg?fit=clip&crop=faces%2Cfocalpoint&w=300	+36° 27′ 35″	One of the brightest and best-known globular clusters in the northern sky, containing several hundred thousand stars.	In 1974, the Arecibo message was beamed toward M13 as a deliberate attempt to contact extraterrestrial intelligence.	Hercules corresponds to a region of the sky that North African Berber (Amazigh) astronomers used for seasonal navigation, as its high position in summer marked the peak of the dry season.	1714	Edmond Halley	2026-05-11 21:09:06.831648+00	2026-05-11 23:02:00.681605+00
25	Globular Cluster M14	14	NGC 6402	Globular Cluster	Ophiuchus	30300	7.6	17h 37m 36s	https://science.nasa.gov/wp-content/uploads/2023/04/hubble_m14_wfc3_1flat_cont_final-jpg.webp?w=1024	-03° 14′ 45″	A large, faint globular cluster that appears slightly elongated and is home to over 150,000 stars.	A nova was observed in M14 in 1938, though it wasn't discovered in photographic plates until 1964.	The faintness of M14 required the exceptionally clear, dark skies found in the Sahara or the high plateaus of East Africa for early observers to distinguish it from the background glow of the Milky Way.	1764	Charles Messier	2026-05-11 21:09:06.831652+00	2026-05-11 23:02:00.681608+00
26	Pegasus Cluster	15	NGC 7078	Globular Cluster	Pegasus	33600	6.2	21h 29m 58s	https://science.nasa.gov/wp-content/uploads/2023/04/heic1321a-jpg.webp?w=1024	+12° 10′ 01″	One of the most densely packed globular clusters in the galaxy, having undergone a process known as core collapse.	M15 was the first globular cluster in which a planetary nebula (Pease 1) was discovered.	In many West African cultures, the bright stars of Pegasus were used to track the path of the 'celestial horse' or similar spirit animals, marking the onset of the harmattan winds in some regions.	1746	Jean-Dominique Maraldi	2026-05-11 21:09:06.831656+00	2026-05-11 23:02:00.68161+00
28	Great Sagittarius Cluster	22	NGC 6656	Globular Cluster	Sagittarius	10600	5.1	18h 36m 24s	https://science.nasa.gov/wp-content/uploads/2023/04/potw1514a-jpg.webp?w=1024	-23° 54′ 12″	One of the brightest globular clusters visible from Earth. It is located very close to the galactic bulge.	M22 was the first globular cluster ever discovered (by Abraham Ihle in 1665) and contains two rare black holes.	Due to its brightness, it is easily seen from the dark skies of the Kalahari. Khoi-San star-lore often references the bright patches in the 'Backbone of Night' (Milky Way).	1665	Abraham Ihle	2026-05-11 21:09:06.831665+00	2026-05-11 23:02:00.681612+00
30	Sagittarius Star Cloud	24	IC 4715	Milky Way Star Cloud	Sagittarius	10000	4.6	18h 16m 00s	https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/stars/star-cloud/Hubble_M24_1_flat_FINAL_B_rot90.jpg?fit=clip&crop=faces%2Cfocalpoint&w=300	-18° 29′ 00″	Not a single cluster, but a 'window' through the dust of our galaxy, revealing thousands of stars in a dense spiral arm.	It is the only Messier object that isn't a specific cluster or nebula, but rather a vast region of the galaxy.	Known across the continent as one of the brightest parts of the night sky. In Yoruba cosmology, the dense stars of the Milky Way are sometimes seen as the scattered grain of a primordial creator.	1764	Charles Messier	2026-05-11 21:09:06.831673+00	2026-05-11 23:02:00.681614+00
32	Dumbbell Nebula	27	NGC 6853	Planetary Nebula	Vulpecula	1360	7.5	19h 59m 36s	https://science.nasa.gov/wp-content/uploads/2023/04/opo0306a-jpg.webp?w=1024	+22° 43′ 16″	The first planetary nebula ever discovered. It is the result of an old star shedding its outer layers.	It has an hourglass shape, similar to the future fate of our own Sun.	The 'dying star' concept mirrors several West African philosophies about the cycle of ancestors—where a fading presence in the physical world leaves behind a beautiful, expanding influence.	1764	Charles Messier	2026-05-11 21:09:06.831681+00	2026-05-11 23:02:00.681616+00
33	Globular Cluster M28	28	NGC 6626	Globular Cluster	Sagittarius	17900	6.8	18h 24m 33s	https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/stars/globular-clusters/Hubble_M28_potw1910a.tif?fit=clip&crop=faces%2Cfocalpoint&w=300	-24° 52′ 11″	A compact globular cluster containing thousands of stars, located near the bright star Kaus Borealis.	In 1987, the first millisecond pulsar was discovered within this cluster.	The cluster is situated in the 'bow' of the archer (Sagittarius). In Egyptian mythology, this area was associated with the sharp precision of Satis, the goddess of the hunt.	1764	Charles Messier	2026-05-11 21:09:06.831685+00	2026-05-11 23:02:00.681618+00
35	Globular Cluster M30	30	NGC 7099	Globular Cluster	Capricornus	27100	7.2	21h 40m 22s	https://science.nasa.gov/wp-content/uploads/2023/04/heic0918a-jpg.webp?w=1024	-23° 10′ 45″	A cluster that has undergone 'core collapse,' making its center incredibly dense with stars.	Stars in M30 are moving in the opposite direction of the Milky Way's rotation, suggesting the cluster was 'captured' by our galaxy.	Located in Capricornus, the 'Sea-Goat.' For Nilotic peoples, the stars in this southern region helped track the passing of time during the long nights of the dry season.	1764	Charles Messier	2026-05-11 21:09:06.831693+00	2026-05-11 23:02:00.68162+00
44	Open Cluster M46	46	NGC 2437	Open Star Cluster	Puppis	5400	6.1	07h 41.8m	https://science.nasa.gov/wp-content/uploads/2023/04/hubble_ngc2438_wfpc2_screen_3mb.png?w=1024	-14° 49'	A very rich open cluster containing about 500 stars. It notably appears to contain a planetary nebula (NGC 2438).	The planetary nebula seen 'inside' M46 is actually a foreground object—it is much closer to Earth than the cluster itself.	Located in Puppis (the Stern), part of the giant ship Argo Navis. Coastal African navigators used these southern stars for orientation along the Atlantic and Indian Oceans.	1771	Charles Messier	2026-05-11 21:09:06.831731+00	2026-05-11 23:02:00.681629+00
46	Open Cluster M48	48	NGC 2548	Open Star Cluster	Hydra	1500	5.8	08h 13.7m	https://science.nasa.gov/wp-content/uploads/2024/08/hubble-m48-1-flat-final-2.jpg?w=1024	-05° 45'	A large cluster of about 80 stars, visible to the naked eye as a faint glow in the constellation Hydra.	Like M47, this was lost for decades due to a coordinate error by Messier; it wasn't officially identified as NGC 2548 until 1959.	Hydra is the 'Water Snake.' In many African traditions, snakes are guardians of water sources, and the rising of this constellation often preceded the rains.	1771	Charles Messier	2026-05-11 21:09:06.831739+00	2026-05-11 23:02:00.681631+00
47	Open Cluster M49	49	NGC 4472	Elliptical Galaxy	Virgo	55900000	8.4	12h 29.8m	https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/galaxies/elliptical/Hubble_M49_potw1911a.tif?fit=clip&crop=faces%2Cfocalpoint&w=300	+08° 00'	The first galaxy in the Virgo Cluster to be discovered. It is a massive elliptical galaxy containing billions of stars.	M49 was the first member of the Virgo Cluster of galaxies to be discovered, preceding the discovery of the cluster itself.	In Egyptian astronomy, Virgo was associated with the goddess Isis. Galaxies in this region were seen as part of the divine 'field' of the sky.	1771	Charles Messier	2026-05-11 21:09:06.831743+00	2026-05-11 23:02:00.681633+00
50	Globular Cluster M53	53	NGC 5024	Globular Cluster	Coma Berenices	58000	7.7	13h 12.9m	https://science.nasa.gov/wp-content/uploads/2023/04/potw1140a-jpg.webp?w=1024	+18° 10'	One of the most distant globular clusters from the center of our galaxy.	It is nearly 13 billion years old and contains stars that are very poor in metals, typical of the early universe.	The constellation Coma Berenices is named after an Egyptian Queen (Berenice II). M53 sits within the hair of the Queen, a direct link to African history.	1775	Johann Elert Bode	2026-05-11 21:09:06.831755+00	2026-05-11 23:02:00.681635+00
51	Globular Cluster M54	54	NGC 6715	Globular Cluster	Sagittarius	87400	7.6	18h 55.1m	https://science.nasa.gov/wp-content/uploads/2023/04/potw1145a-jpg.webp?w=1024	-30° 29'	A dense globular cluster that is actually not part of our galaxy, but belongs to the Sagittarius Dwarf Elliptical Galaxy.	M54 was the first globular cluster ever discovered that is extra-galactic (belongs to another galaxy).	Its location in Sagittarius makes it an 'extragalactic' neighbor visible from the entire African continent. It represents the vastness beyond our own Milky Way.	1778	Charles Messier	2026-05-11 21:09:06.831759+00	2026-05-11 23:02:00.681637+00
52	Globular Cluster M55	55	NGC 6809	Globular Cluster	Sagittarius	17600	6.3	19h 40.0m	https://science.nasa.gov/wp-content/uploads/2023/06/hubble-m55-mos-acs-long-flat-final2-jpg.webp?w=1024	-30° 58'	A large but loosely concentrated globular cluster, making it appear as a large, grainy patch of light.	It is one of the largest globular clusters in the sky, nearly as large as the full moon in diameter.	Because it is so far south, it is a perfect target for observers in Southern and Central Africa, appearing high overhead during the dry season.	1751	Nicolas Louis de Lacaille	2026-05-11 21:09:06.831763+00	2026-05-11 23:02:00.68164+00
53	Globular Cluster M56	56	NGC 6779	Globular Cluster	Lyra	32900	8.3	19h 16m 35s	https://science.nasa.gov/wp-content/uploads/2023/04/potw1234a-jpg.webp?w=1024	+30° 11′ 00″	A relatively faint globular cluster located midway between the stars Albireo and Sulafat.	M56 is moving through our galaxy in a retrograde orbit, suggesting it may have been captured from a swallowed dwarf galaxy.	Located in Lyra (the Lyre). The lyre or kora is a foundational instrument in West African Mande music traditions; this cluster sits in the 'celestial kora'.	1779	Charles Messier	2026-05-11 21:09:06.831768+00	2026-05-11 23:02:00.681642+00
54	Ring Nebula	57	NGC 6720	Planetary Nebula	Lyra	2300	8.8	18h 53m 35s	https://science.nasa.gov/wp-content/uploads/2023/04/ring-nebula-full_jpg-jpg.webp?w=1024	+33° 01′ 45″	The most famous planetary nebula, shaped like a glowing donut of gas expelled by a dying star.	The central white dwarf star is roughly the size of Earth but has a temperature of 100,000 Kelvin.	The ring shape mirrors the 'circular' concept of time and reincarnation found in many African traditional religions—the end of a star's life creating the seeds for new ones.	1779	Antoine Darquier de Pellepoix	2026-05-11 21:09:06.831772+00	2026-05-11 23:02:00.681644+00
55	Globular Cluster M58	58	NGC 4579	Barred Spiral Galaxy	Virgo	62000000	9.7	12h 37m 43s	https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/galaxies/spiral/Hubble_M58_1_flat_FINAL_NewImage.jpg?fit=clip&crop=faces%2Cfocalpoint&w=300	+11° 49′ 05″	One of the brightest galaxies in the Virgo Cluster and one of the first recognized spiral galaxies.	M58 is an 'active' galaxy with a supermassive black hole at its core that is consuming nearby gas.	Visible in the Virgo 'Field' which ancient Egyptian astronomers associated with the fertile silt of the Nile—a place of abundant creation.	1779	Charles Messier	2026-05-11 21:09:06.831776+00	2026-05-11 23:02:00.681646+00
56	Spiral Galaxy M59	59	NGC 4621	Elliptical Galaxy	Virgo	60000000	10.6	12h 42m 02s	https://science.nasa.gov/wp-content/uploads/2023/04/potw1921a-jpg.webp?w=1024	+11° 38′ 49″	A large elliptical galaxy in the Virgo Cluster, known for its very dense core of stars.	Its central black hole is 270 million times the mass of our Sun.	Elliptical galaxies appear like glowing eggs; the 'Cosmic Egg' is a common creation motif in several West African cosmogonies.	1779	Johann Gottfried Koehler	2026-05-11 21:09:06.83178+00	2026-05-11 23:02:00.681648+00
57	Spiral Galaxy M60	60	NGC 4649	Elliptical Galaxy	Virgo	55000000	8.8	12h 43m 40s	https://science.nasa.gov/wp-content/uploads/2023/04/m60_and_ngc_4647-jpg.webp?w=1024	+11° 33′ 09″	A massive elliptical galaxy that is interacting with its spiral neighbor, NGC 4647.	The interaction between these two galaxies is a preview of what will happen when Andromeda and the Milky Way eventually meet.	The relationship between these two galaxies—one elliptical, one spiral—reflects the African philosophical emphasis on 'duality' and balance.	1779	Johann Gottfried Koehler	2026-05-11 21:09:06.831784+00	2026-05-11 23:02:00.68165+00
58	Spiral Galaxy M61	61	NGC 4303	Spiral Galaxy	Virgo	52500000	9.7	12h 21m 55s	https://science.nasa.gov/wp-content/uploads/2023/04/potw1324a-jpg.webp?w=1024	+04° 28′ 25″	A stunning 'face-on' spiral galaxy known as a 'starburst galaxy' due to its high rate of star formation.	Eight supernovae have been observed in M61 since 1926—more than almost any other galaxy.	The face-on spiral structure looks like a cosmic whirlpool, which in some Riverine African cultures is a symbol of powerful transition or spiritual energy.	1779	Barnaba Oriani	2026-05-11 21:09:06.831788+00	2026-05-11 23:02:00.681652+00
59	Globular Cluster M62	62	NGC 6266	Globular Cluster	Ophiuchus	22200	6.7	17h 01m 12s	https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/stars/globular-clusters/Hubble_M62_2019_potw1915a.jpg?fit=clip&crop=faces%2Cfocalpoint&w=300	-30° 06′ 44″	A globular cluster that is noticeably irregular in shape, likely due to tidal forces from the galactic center.	It is one of the closest globular clusters to the center of the Milky Way.	Its distorted shape reflects the idea that the 'center' (the divine or the community) exerts a pull that shapes all individuals around it.	1771	Charles Messier	2026-05-11 21:09:06.831813+00	2026-05-11 23:02:00.681654+00
60	Black Eye Galaxy	64	NGC 4826	Spiral Galaxy	Coma Berenices	17000000	9.36	12h 56m 43s	https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/galaxies/spiral/Hubble_Webb_M64_UVIS_V4_flat_FINAL_NewImage.jpg?fit=clip&crop=faces%2Cfocalpoint&w=300	+21° 40′ 58″	A galaxy with a spectacular dark band of absorbing dust in front of the galaxy's bright nucleus.	The gas in the outer regions of M64 rotates in the opposite direction from the gas and stars in its inner regions.	The 'eye' motif is central to Egyptian archaeology (Eye of Horus), representing protection and royal power. This galaxy is the Eye of Horus in the stars.	1779	Edward Pigott	2026-05-11 21:09:06.831827+00	2026-05-11 23:02:00.681656+00
61	Leo Triplet Galaxy M65	65	NGC 3623	Intermediate Spiral Galaxy	Leo	35000000	10.25	11h 18m 56s	https://science.nasa.gov/wp-content/uploads/2023/04/potw1352a-1-jpg.webp?w=1024	+13° 05′ 32″	One of three galaxies in the Leo Triplet, featuring tightly wound spiral arms.	M65 is being gravitationally pulled by its neighbors M66 and NGC 3628, causing its disk to slightly warp.	Located in Leo, the Lion. Across Africa, from Nigeria to Tanzania, the Lion is the king of beasts. M65 is one of the 'jewels' in the King's constellation.	1780	Charles Messier	2026-05-11 21:09:06.83184+00	2026-05-11 23:02:00.681658+00
62	Leo Triplet Galaxy M66	66	NGC 3627	Intermediate Spiral Galaxy	Leo	36000000	8.9	11h 20m 15s	https://science.nasa.gov/wp-content/uploads/2023/04/heic1006a-jpg.webp?w=1024	+12° 59′ 30″	A member of the Leo Triplet, this galaxy shows asymmetric spiral arms due to gravitational encounters with its neighbors.	The uneven shape of its arms is a direct result of being pulled by the gravity of M65 and NGC 3628.	Found in the 'Chest' of the Lion. In many African cultures, the lion's heart or chest represents courage and the seat of power.	1780	Charles Messier	2026-05-11 21:09:06.831851+00	2026-05-11 23:02:00.681661+00
63	The King of Clusters	67	NGC 2682	Open Star Cluster	Cancer	2700	6.1	08h 51m 18s	https://science.nasa.gov/wp-content/uploads/2024/08/m67-acs-1mstr-flat-final-sm.jpg?w=1024	+11° 49′ 00″	One of the oldest known open clusters, with an age nearly equal to our own Solar System.	Because it is so old (4 billion years), its stars have a chemical composition very similar to our Sun.	Located in a faint constellation that many desert cultures used to mark the 'empty quarter' of the sky between more prominent stars.	1779	Johann Gottfried Koehler	2026-05-11 21:09:06.831862+00	2026-05-11 23:02:00.681663+00
64	Globular Cluster M68	68	NGC 4590	Globular Cluster	Hydra	33600	7.8	12h 39m 28s	https://science.nasa.gov/wp-content/uploads/2023/04/potw1231a-jpg.webp?w=1024	-26° 44′ 35″	A globular cluster that is moving in a very eccentric orbit around our galaxy.	M68 contains at least 42 variable stars, which astronomers use to measure distances in space.	In the 'Water Snake' constellation. For the Dogon people of Mali, such dense 'star-seeds' were part of the complex astronomical knowledge passed down through generations.	1780	Charles Messier	2026-05-11 21:09:06.831868+00	2026-05-11 23:02:00.681665+00
65	Spiral Galaxy M69	69	NGC 6637	Globular Cluster	Sagittarius	29700	7.6	18h 31m 23s	https://science.nasa.gov/wp-content/uploads/2023/04/potw1240a-jpg.webp?w=1024	-32° 20′ 53″	One of the most metal-rich globular clusters, meaning its stars have a high concentration of elements heavier than helium.	It is located very close to the center of the Milky Way, only about 6,000 light-years away from the core.	Its location in the southern sky makes it a prominent feature for observers in Southern Africa, appearing high during the winter solstice.	1780	Charles Messier	2026-05-11 21:09:06.831874+00	2026-05-11 23:02:00.681667+00
66	Globular Cluster M70	70	NGC 6681	Globular Cluster	Sagittarius	29400	7.9	18h 43m 13s	https://science.nasa.gov/wp-content/uploads/2023/04/potw1215a-jpg.webp?w=1024	-32° 17′ 31″	A small but bright globular cluster that sits between M69 and M54.	In 1995, the famous Comet Hale-Bopp was discovered very close to the position of M70.	Sagittarius represents an Archer; in Egyptian star maps, this area was associated with the protection of the southern borders of the sky.	1780	Charles Messier	2026-05-11 21:09:06.831879+00	2026-05-11 23:02:00.681669+00
67	Globular Cluster M71	71	NGC 6838	Globular Cluster	Sagitta	13000	8.2	19h 53m 46s	https://science.nasa.gov/wp-content/uploads/2023/04/potw1018a-jpg.webp?w=1024	+18° 46′ 45″	A very loosely packed globular cluster that was long mistaken for an open cluster.	It lacks the dense central 'core' usually seen in globular clusters, making it a unique transitional object.	Sagitta is the 'Arrow.' Many East African folklore tales link arrows in the sky to the hunt and the providing of food for the community.	1745	Philippe Loys de Chéseaux	2026-05-11 21:09:06.831885+00	2026-05-11 23:02:00.681671+00
81	Spiral Galaxy M88	88	NGC 4501	Spiral Galaxy	Coma Berenices	47000000	9.6	12h 31m 59s	https://science.nasa.gov/wp-content/uploads/2023/04/m88_core_1_crop_final-01-jpg.webp?w=1024	+14° 25′ 14″	A multi-armed spiral galaxy that is slanted relative to our line of sight.	It is one of the most 'crowded' galaxies in the Virgo cluster, packed with hot young stars.	The overlapping arms resemble the intricate weaving patterns of Kente cloth—complex and structurally beautiful.	1781	Charles Messier	2026-05-11 21:09:06.831981+00	2026-05-11 23:02:00.681711+00
68	Globular Cluster M72	72	NGC 6981	Globular Cluster	Aquarius	54600	9.3	20h 53m 28s	https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/stars/globular-clusters/Hubble_M72_potw2516a.tif?fit=clip&crop=faces%2Cfocalpoint&w=300	-12° 32′ 13″	One of the more distant Messier globular clusters, located far on the other side of the galactic center.	It is quite young for a globular cluster, yet it still contains dozens of RR Lyrae variable stars.	Aquarius is the 'Water Bearer.' Across the continent, the rising of the stars in this region is traditionally tied to the end of the dry season and the replenishment of rivers.	1780	Pierre Méchain	2026-05-11 21:09:06.831895+00	2026-05-11 23:02:00.681673+00
70	Spiral Galaxy M74	74	NGC 628	Spiral Galaxy	Pisces	32000000	9.4	01h 36m 42s	https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/galaxies/spiral/Hubble_M74_2022_potw2235a.jpg?fit=clip&crop=faces%2Cfocalpoint&w=300	+15° 47′ 01″	A perfect example of a 'grand design' spiral galaxy with prominent, well-defined arms.	It is notoriously difficult for amateur astronomers to see because of its low surface brightness, earning it the nickname 'The Phantom Galaxy.'	Its perfect spiral shape mirrors the 'Koru' or spiral patterns often found in traditional African art, representing growth and the unfolding of the universe.	1780	Pierre Méchain	2026-05-11 21:09:06.831917+00	2026-05-11 23:02:00.681687+00
71	Globular Cluster M75	75	NGC 6864	Globular Cluster	Sagittarius	67500	8.5	20h 06m 05s	https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/stars/globular-clusters/Hubble_M75_2019_potw1916a.jpg?fit=clip&crop=faces%2Cfocalpoint&w=300	-21° 55′ 17″	A very compact and dense globular cluster, one of the most concentrated in the Messier catalog.	Because it is so far away and so compact, it requires a very high-powered telescope to resolve individual stars.	Located on the edge of Sagittarius; it serves as a reminder of the vast 'islands' of stars that exist far beyond the main band of the Milky Way.	1780	Pierre Méchain	2026-05-11 21:09:06.83193+00	2026-05-11 23:02:00.68169+00
72	Little Dumbbell Nebula	76	NGC 650	Planetary Nebula	Perseus	2500	10.1	01h 42m 20s	https://science.nasa.gov/wp-content/uploads/2024/04/hubble-34th-littledumbell-sm-stsci-01htddrc7nr68q120setwhmsaq.png?w=1024	+51° 34′ 31″	A complex planetary nebula that looks like a smaller version of M27. It was originally thought to be two separate nebulae.	The nebula is expanding at a rate of about 42 kilometers per second.	The 'double' nature of this nebula mirrors the importance of the number two in Dogon and Yoruba philosophy, representing the dual nature of the universe.	1780	Pierre Méchain	2026-05-11 21:09:06.831942+00	2026-05-11 23:02:00.681692+00
73	Cetus Dwarf Cluster	77	NGC 1068	Spiral Galaxy	Cetus	47000000	9.6	02h 42m 41s	https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/galaxies/spiral/Hubble_M77_2025_potw2515a.jpg?fit=clip&crop=faces%2Cfocalpoint&w=300	-00° 00′ 48″	An active barred spiral galaxy and one of the most famous examples of a Seyfert galaxy.	Its core is incredibly bright because of a supermassive black hole that is 15 million times more massive than our Sun.	Located in Cetus, the Whale. While 'whales' are oceanic, some West African coastal myths speak of giant sea spirits that mirror the vastness of the dark sky.	1780	Pierre Méchain	2026-05-11 21:09:06.831948+00	2026-05-11 23:02:00.681694+00
74	Globular Cluster M78	78	NGC 2068	Reflection Nebula	Orion	1600	8.3	05h 46m 47s	https://science.nasa.gov/wp-content/uploads/2023/04/m78_0-jpg.webp?w=903	+00° 00′ 50″	The brightest reflection nebula in the sky, illuminated by young, hot stars embedded within it.	This nebula contains several 'Herbig-Haro' objects, which are jets of gas ejected by newborn stars.	Part of Orion, the most recognized constellation in Africa. For the Sotho of South Africa, these stars were 'The Three Pigs,' and M78 is the shimmering dust of their celestial home.	1780	Pierre Méchain	2026-05-11 21:09:06.831953+00	2026-05-11 23:02:00.681696+00
75	Globular Cluster M79	79	NGC 1904	Globular Cluster	Lepus	41000	7.7	05h 24m 11s	https://science.nasa.gov/wp-content/uploads/2023/04/m791343x1343.png?w=1024	-24° 31′ 27″	A globular cluster located in a unusual part of the sky, opposite the galactic center.	Astronomers believe M79 may have originated in the Canis Major Dwarf Galaxy, which is currently being absorbed by the Milky Way.	Located in Lepus, the Hare. In many African fables, the Hare is the clever trickster (like Ijapa the Tortoise) who uses wit to navigate the world.	1780	Pierre Méchain	2026-05-11 21:09:06.831957+00	2026-05-11 23:02:00.681698+00
76	Globular Cluster M80	80	NGC 6093	Globular Cluster	Scorpius	32600	7.3	16h 17m 02s	https://science.nasa.gov/wp-content/uploads/2023/04/hubble_m80_wfc3_acs_comb_final2-jpg.webp?w=1024	-22° 58′ 34″	One of the most densely populated globular clusters in our galaxy.	It contains a large number of 'blue stragglers'—stars that appear younger and hotter than they should be for the cluster's age.	Scorpius is highly significant across Nigeria; its rising marks the peak of the farming cycle in many regions.	1781	Charles Messier	2026-05-11 21:09:06.831961+00	2026-05-11 23:02:00.6817+00
77	Spiral Galaxy M84	84	NGC 4374	Lenticular Galaxy	Virgo	60000000	9.1	12h 25m 04s	https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/galaxies/elliptical/M84_1_core2_flat_FINAL3.jpg?fit=clip&crop=faces%2Cfocalpoint&w=300	+12° 53′ 13″	A bright lenticular galaxy at the core of the Virgo Cluster.	M84 is famous for its central supermassive black hole, which was one of the first to be mapped using gas-disk velocity measurements.	As part of 'Markarian's Chain' of galaxies, these objects represent the interconnectedness celebrated in African communal 'Ubuntu' philosophy.	1781	Charles Messier	2026-05-11 21:09:06.831965+00	2026-05-11 23:02:00.681702+00
78	Spiral Galaxy M85	85	NGC 4382	Lenticular Galaxy	Coma Berenices	60000000	9.1	12h 25m 24s	https://science.nasa.gov/wp-content/uploads/2023/04/m85_0-jpg.webp?w=1024	+18° 11′ 28″	The northernmost member of the Virgo Cluster, this galaxy is a mix of old stars and recent star formation.	Evidence suggests M85 merged with another galaxy about 4 billion years ago.	Located in the 'Hair of the Queen.' For Nilotic people, the movement of these northern clusters helped divide the year into lunar cycles.	1781	Pierre Méchain	2026-05-11 21:09:06.831969+00	2026-05-11 23:02:00.681704+00
79	Spiral Galaxy M86	86	NGC 4406	Lenticular Galaxy	Virgo	52000000	8.9	12h 26m 12s	https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/galaxies/Hubble_M86_2019_potw1938a.jpg?fit=clip&crop=faces%2Cfocalpoint&w=300	+12° 56′ 46″	A massive galaxy that is actually moving toward the Milky Way, unlike most other galaxies in the Virgo Cluster.	M86 has the highest blueshift (speed toward us) of all the Messier galaxies.	The bright core of M86 was used as a reference point for early astronomical calculations in the Islamic schools of North Africa.	1781	Charles Messier	2026-05-11 21:09:06.831973+00	2026-05-11 23:02:00.681707+00
80	Virgo A	87	NGC 4486	Elliptical Galaxy	Virgo	53500000	8.6	12h 30m 49s	https://science.nasa.gov/wp-content/uploads/2023/04/m87-full_jpg-jpg.webp?w=1024	+12° 23′ 28″	One of the most massive galaxies in the local universe and a powerful source of radio waves.	This galaxy contains the first black hole ever directly imaged (by the Event Horizon Telescope in 2019).	A 'monarch' of the Virgo cluster. In many African governance traditions, the largest entity is seen as the central pillar of the community, much like M87 pulls in other galaxies.	1781	Charles Messier	2026-05-11 21:09:06.831977+00	2026-05-11 23:02:00.681709+00
82	Spiral Galaxy M89	89	NGC 4552	Elliptical Galaxy	Virgo	50000000	9.8	12h 35m 40s	https://science.nasa.gov/wp-content/uploads/2023/04/m89.png?w=1024	+12° 33′ 23″	A perfectly spherical elliptical galaxy that is almost perfectly round.	M89 was the first galaxy discovered to have an envelope of surrounding gas and dust extending far into space.	The perfect circle is a symbol of eternity and the divine in many African cultures; M89 is the sky's most perfect circle of stars.	1781	Charles Messier	2026-05-11 21:09:06.831986+00	2026-05-11 23:02:00.681713+00
83	Spiral Galaxy M90	90	NGC 4569	Spiral Galaxy	Virgo	58000000	9.5	12h 36m 50s	https://science.nasa.gov/wp-content/uploads/2024/10/hubble-m90-potw2442a.jpg?w=1024	+13° 09′ 46″	One of the largest and brightest spiral galaxies in the Virgo Cluster.	Its spiral arms are 'anaemic,' meaning they have very little gas left to form new stars.	The 'fading' of this galaxy’s star production mirrors the dry seasons in Africa where life slows down but remains vibrant and resilient.	1781	Charles Messier	2026-05-11 21:09:06.83199+00	2026-05-11 23:02:00.681715+00
84	Spiral Galaxy M91	91	NGC 4548	Barred Spiral Galaxy	Coma Berenices	63000000	10.2	12h 35m 26s	https://science.nasa.gov/wp-content/uploads/2023/04/m91_wfc3_4_crop_v2_final-jpg.webp?w=1024	+14° 29′ 47″	An elegant barred spiral galaxy. It is one of the most difficult Messier objects to observe due to its low surface brightness.	M91 was 'lost' for nearly 200 years because Messier recorded its position relative to a star that he had misidentified.	The 'bar' structure in the center mirrors the geometric precision found in traditional Hausa architecture and embroidery.	1781	Charles Messier	2026-05-11 21:09:06.831994+00	2026-05-11 23:02:00.681717+00
85	Spiral Galaxy M94	94	NGC 4736	Spiral Galaxy	Canes Venatici	16000000	8.2	12h 50m 53s	https://science.nasa.gov/wp-content/uploads/2023/04/hubble_friday_102315-jpg.webp?w=1024	+41° 07′ 14″	A galaxy with two ring structures. The inner ring is a zone of intense star-forming activity.	The 'starburst' ring in M94 is creating new stars at an incredibly high rate compared to the rest of the galaxy.	The concentric rings are reminiscent of the 'circular' settlements (Kraals) found in Southern African history, where the center is the site of most activity.	1781	Pierre Méchain	2026-05-11 21:09:06.831998+00	2026-05-11 23:02:00.681719+00
86	Spiral Galaxy M95	95	NGC 3351	Barred Spiral Galaxy	Leo	32600000	9.7	10h 43m 57s	https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/galaxies/spiral/Hubble_M95_center_ma_flat_FINAL_NewImage.jpg?fit=clip&crop=faces%2Cfocalpoint&w=300	+11° 42′ 14″	A barred spiral galaxy in the constellation of the Lion, known for its nearly circular spiral arms.	In 2012, a Type II supernova was discovered in one of its spiral arms.	In the 'Lion' constellation, which symbolizes royalty. M95 is often described as a 'royal seal' due to its distinct, symmetrical shape.	1781	Pierre Méchain	2026-05-11 21:09:06.832002+00	2026-05-11 23:02:00.681722+00
88	Surfboard Galaxy	108	NGC 3556	Barred Spiral Galaxy	Ursa Major	45000000	10	11h 11m 31s	https://science.nasa.gov/wp-content/uploads/2018/03/hubble-m108-1-flat-final-new.jpg?w=894	+55° 40′ 27″	A spiral galaxy seen almost edge-on, giving it a long, thin shape like a surfboard.	Unlike many galaxies, M108 has no clear central bulge, making it look very flat and uniform.	The edge-on view is used by astronomers to study the dust lanes in galaxies—dust that mirrors the fine red earth of the Sahel during the harmattan.	1781	Pierre Méchain	2026-05-11 21:09:06.83201+00	2026-05-11 23:02:00.681724+00
89	M110 Satellite	110	NGC 205	Dwarf Elliptical Galaxy	Andromeda	2690000	8.1	00h 40m 22s	https://science.nasa.gov/wp-content/uploads/2023/04/m110.png?w=1024	+41° 41′ 07″	A small dwarf galaxy that orbits the massive Andromeda Galaxy.	M110 was the last object added to the Messier catalog, though it was originally observed by Messier himself in 1773.	Visible alongside Andromeda (M31). In the clear skies of Northern Nigeria, these pairs of galaxies help define the depth of the northern winter sky.	1773	Charles Messier	2026-05-11 21:09:06.832018+00	2026-05-11 23:02:00.681726+00
91	De Mairan's Nebula	43	NGC 1982	Emission/Reflection Nebula	Orion	1300	9	05h 35m 31s	https://science.nasa.gov/wp-content/uploads/2023/04/heic0601c-jpg.webp?w=1024	-05° 16′ 03″	A separate part of the Orion Nebula, divided by a striking dark lane of dust.	It is actually part of the same massive gas cloud as M42 but is illuminated by a different star.	Orion's Belt and Sword are used across Africa for seasonal timekeeping; this nebula adds to the 'glory' of the hunter.	1731	Jean-Jacques d'Ortous de Mairan	2026-05-11 21:09:06.832043+00	2026-05-11 23:02:00.681728+00
92	Hercules Cluster	92	NGC 6341	Globular Cluster	Hercules	26700	6.3	17h 17m 07s	https://science.nasa.gov/wp-content/uploads/2023/04/potw1449a_0-jpg.webp?w=1024	+43° 08′ 11″	One of the oldest and brightest globular clusters in the Milky Way.	It is nearly 14 billion years old, making it one of the first structures to form in the universe.	Its age is used as a benchmark for teaching the timeline of the universe in African science curricula.	1777	Johann Elert Bode	2026-05-11 21:09:06.832051+00	2026-05-11 23:02:00.68173+00
94	Spiral Galaxy M96	96	NGC 3368	Intermediate Spiral Galaxy	Leo	31000000	10.1	10h 46m 45s	https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/galaxies/Hubble_M96_2025_potw2534a.jpg?fit=clip&crop=faces%2Cfocalpoint&w=300	+11° 49′ 12″	The brightest galaxy in the Leo I group, featuring a prominent central bulge.	The galaxy’s asymmetry suggests it was tugged on by the gravity of its neighbors in the past.	Located in the heart of the Lion constellation, which is central to kingship lore across the continent.	1781	Pierre Méchain	2026-05-11 21:09:06.832073+00	2026-05-11 23:02:00.681732+00
95	Spiral Galaxy M98	98	NGC 4192	Spiral Galaxy	Coma Berenices	44400000	10.1	12h 13m 48s	https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/galaxies/spiral/Hubble_M98_potw1925a.tif?fit=clip&crop=faces%2Cfocalpoint&w=300	+14° 54′ 01″	A nearly edge-on spiral galaxy that is one of the few moving toward us.	It contains a huge amount of dark matter, even more than the Milky Way relative to its size.	Mirrors the African philosophy of the 'unseen' forces (dark matter) that maintain the balance of the universe.	1781	Pierre Méchain	2026-05-11 21:09:06.832087+00	2026-05-11 23:02:00.681734+00
96	Spiral Galaxy M99	99	NGC 4254	Spiral Galaxy	Coma Berenices	50200000	10.4	12h 18m 50s	https://science.nasa.gov/wp-content/uploads/2023/04/potw1223a-jpg.webp?w=1024	+14° 24′ 59″	A grand-design spiral galaxy with one unusually long, stretched-out arm.	This galaxy is moving through the Virgo cluster at a massive speed, which may be stripping its gas.	The spiral arm looks like the ivory trumpets used in traditional Nigerian royal ceremonies.	1781	Pierre Méchain	2026-05-11 21:09:06.832094+00	2026-05-11 23:02:00.681737+00
98	Pinwheel Galaxy	101	NGC 5457	Spiral Galaxy	Ursa Major	20800000	7.9	14h 03m 13s	https://assets.science.nasa.gov/dynamicimage/assets/science/missions/hubble/galaxies/spiral/M101_HST_MIRI_V3_flat_FINAL_NewImage.jpg?fit=clip&crop=faces%2Cfocalpoint&w=300	+54° 20′ 57″	A massive, face-on spiral galaxy that is nearly double the diameter of the Milky Way.	It has an unusually high population of HII star-forming regions.	The 'pinwheel' shape is reflected in the traditional weaving patterns of the Ashanti people.	1781	Pierre Méchain	2026-05-11 21:09:06.832102+00	2026-05-11 23:02:00.681741+00
99	Spindle Galaxy	102	NGC 5866	Lenticular Galaxy	Draco	50000000	10.7	15h 06m 30s	https://science.nasa.gov/wp-content/uploads/2023/04/ngc5866-jpg.webp?w=1024	+55° 45′ 48″	An edge-on lenticular galaxy with a very flat disk and a prominent dust lane.	Whether M102 was a separate object or a duplicate of M101 was a long-standing mystery.	The spindle is a tool of creation in African textile history; this galaxy is the spindle of the stars.	1781	Pierre Méchain	2026-05-11 21:09:06.832106+00	2026-05-11 23:02:00.681743+00
100	The Fan Cluster	103	NGC 581	Open Star Cluster	Cassiopeia	10000	7.4	01h 33m 12s	https://science.nasa.gov/wp-content/uploads/2023/04/m105-jpg.webp?w=1024	+60° 42′ 00″	A remote and beautiful open cluster with a distinct wedge shape.	It is one of the most distant open clusters in the Messier catalog.	Its fan shape is reminiscent of the traditional fans used by royalty in the Benin Empire.	1781	Pierre Méchain	2026-05-11 21:09:06.83211+00	2026-05-11 23:02:00.681745+00
102	Spiral Galaxy M106	106	NGC 4258	Spiral Galaxy	Canes Venatici	23700000	9.1	12h 18m 57s	https://science.nasa.gov/wp-content/uploads/2023/04/m106-1-jpg.webp?w=1024	+47° 18′ 14″	A galaxy with two 'extra' arms made of hot gas, visible in X-ray and radio light.	These anomalous arms are created by a massive black hole at the center throwing out high-energy jets.	The 'extra arms' represent the dynamism and energy often associated with African drum rhythms.	1781	Pierre Méchain	2026-05-11 21:09:06.832131+00	2026-05-11 23:02:00.681747+00
103	Globular Cluster M107	107	NGC 6171	Globular Cluster	Ophiuchus	20900	8.9	16h 32m 32s	https://science.nasa.gov/wp-content/uploads/2023/04/potw1229a-jpg.webp?w=1024	-13° 03′ 13″	A loosely concentrated globular cluster containing several dust lanes.	It is much more transparent than most globular clusters, allowing us to see through its center.	Located in Ophiuchus (the Healer), connecting science with traditional African medicinal wisdom.	1782	Pierre Méchain	2026-05-11 21:09:06.832134+00	2026-05-11 23:02:00.681749+00
104	Spiral Galaxy M109	109	NGC 3992	Spiral Galaxy	Ursa Major	83500000	10.6	11h 57m 36s	https://science.nasa.gov/wp-content/uploads/2023/06/hubble-m109-wfc3-2flat-jpg.webp?w=1024	+53° 22′ 28″	A barred spiral galaxy that is the most distant object in the Messier catalog.	It has a very distinct central bar that is visible even in smaller telescopes.	Used to showcase the incredible reach of our universe to students in Ogun State.	1781	Pierre Méchain	2026-05-11 21:09:06.832139+00	2026-05-11 23:02:00.681751+00
\.


--
-- Data for Name: planets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.planets (id, name, mass, radius, distance_from_sun, orbital_period, has_rings, number_of_moons, surface_gravity, temperature, description, fun_facts, image_url, visible_from_nigeria, naked_eye_view, created_at, updated_at, is_exoplanet, host_star, discovery_method, discovery_year, distance_from_earth_ly, african_context) FROM stdin;
9	Kepler-1167 b	3.57	1.71	\N	1.003933739	f	0	\N	1419	\N	\N	\N	f	f	2026-05-09 16:35:49.12576+00	2026-05-09 16:35:49.125765+00	t	Kepler-1167	Transit	2016	2677.43	\N
10	Kepler-1740 b	11	3.32321414	\N	8.172400475	f	0	\N	858	\N	\N	\N	f	f	2026-05-09 16:35:49.125768+00	2026-05-09 16:35:49.125769+00	t	Kepler-1740	Transit	2021	3463.03	\N
11	Kepler-1581 b	0.437	0.8	\N	6.28385491	f	0	\N	1108	\N	\N	\N	f	f	2026-05-09 16:35:49.125772+00	2026-05-09 16:35:49.125772+00	t	Kepler-1581	Transit	2016	1608.52	\N
12	Kepler-644 b	10.1	3.15	\N	3.173917103	f	0	\N	1655	\N	\N	\N	f	f	2026-05-09 16:35:49.125774+00	2026-05-09 16:35:49.125775+00	t	Kepler-644	Transit	2016	4298.9	\N
13	Kepler-1752 b	18.7	4.54060463	\N	56.35850143	f	0	\N	419	\N	\N	\N	f	f	2026-05-09 16:35:49.125776+00	2026-05-09 16:35:49.125777+00	t	Kepler-1752	Transit	2021	3140.52	\N
14	Kepler-280 c	4.7	2.01	\N	4.807091	f	0	\N	1088	\N	\N	\N	f	f	2026-05-09 16:35:49.125779+00	2026-05-09 16:35:49.125779+00	t	Kepler-280	Transit	2014	2545.19	\N
15	Kepler-1208 b	5.99	2.32	\N	11.08507637	f	0	\N	665	\N	\N	\N	f	f	2026-05-09 16:35:49.125781+00	2026-05-09 16:35:49.125781+00	t	Kepler-1208	Transit	2016	2691.36	\N
16	Kepler-263 c	6.66	2.47	\N	47.332773	f	0	\N	386	\N	\N	\N	f	f	2026-05-09 16:35:49.125783+00	2026-05-09 16:35:49.125784+00	t	Kepler-263	Transit	2014	2461.65	\N
17	Kepler-1101 b	6.66	2.47	\N	81.3151059	f	0	\N	393	\N	\N	\N	f	f	2026-05-09 16:35:49.125785+00	2026-05-09 16:35:49.125786+00	t	Kepler-1101	Transit	2016	2421.62	\N
18	HD 168746 b	85.8141	11.1	\N	6.404	f	0	\N	900	\N	\N	\N	f	f	2026-05-09 16:35:49.125787+00	2026-05-09 16:35:49.125788+00	t	HD 168746	Radial Velocity	2002	135.58	\N
19	TOI-2406 b	15.6	2.86	\N	3.0766891	f	0	\N	449	\N	\N	\N	f	f	2026-05-09 16:35:49.12579+00	2026-05-09 16:35:49.12579+00	t	TOI-2406	Transit	2021	180.75	\N
20	HD 18599 b	24.1	2.6	\N	4.1374354	f	0	\N	863	\N	\N	\N	f	f	2026-05-09 16:35:49.125792+00	2026-05-09 16:35:49.125793+00	t	HD 18599	Transit	2022	125.78	\N
21	Kepler-560 b	3.61	1.72	\N	18.47764449	f	0	\N	298	\N	\N	\N	f	f	2026-05-09 16:35:49.125794+00	2026-05-09 16:35:49.125795+00	t	Kepler-560	Transit	2016	356.51	\N
22	Kepler-150 d	8.2	2.79	\N	12.56093	f	0	\N	734	\N	\N	\N	f	f	2026-05-09 16:35:49.125796+00	2026-05-09 16:35:49.125797+00	t	Kepler-150	Transit	2014	2906.35	\N
23	Kepler-498 b	9.43	3.03	\N	9.61375356	f	0	\N	931	\N	\N	\N	f	f	2026-05-09 16:35:49.125798+00	2026-05-09 16:35:49.125799+00	t	Kepler-498	Transit	2016	3062.1	\N
24	Kepler-817 b	60.2	9.03	\N	3.990106229	f	0	\N	1124	\N	\N	\N	f	f	2026-05-09 16:35:49.125801+00	2026-05-09 16:35:49.125801+00	t	Kepler-817	Transit	2016	4841.66	\N
25	Kepler-937 b	13.4	3.72	\N	67.668827	f	0	\N	495	\N	\N	\N	f	f	2026-05-09 16:35:49.125803+00	2026-05-09 16:35:49.125803+00	t	Kepler-937	Transit	2016	5125.41	\N
26	K2-10 b	25.2	3.773	\N	19.30553	f	0	\N	649	\N	\N	\N	f	f	2026-05-09 16:35:49.125805+00	2026-05-09 16:35:49.125806+00	t	K2-10	Transit	2015	888.32	\N
27	Kepler-571 b	7.46	2.64	\N	4.798599388	f	0	\N	978	\N	\N	\N	f	f	2026-05-09 16:35:49.125807+00	2026-05-09 16:35:49.125808+00	t	Kepler-571	Transit	2016	2360.96	\N
28	Kepler-1458 b	8.05	2.76	\N	47.9872764	f	0	\N	493	\N	\N	\N	f	f	2026-05-09 16:35:49.125809+00	2026-05-09 16:35:49.12581+00	t	Kepler-1458	Transit	2016	1775.76	\N
29	Kepler-1600 c	4.43	1.94206512	\N	7.298049927	f	0	\N	786	\N	\N	\N	f	f	2026-05-09 16:35:49.125812+00	2026-05-09 16:35:49.125812+00	t	Kepler-1600	Transit	2021	3362.05	\N
30	Kepler-221 d	3.61	2.73	\N	10.04156	f	0	\N	712	\N	\N	\N	f	f	2026-05-09 16:35:49.125814+00	2026-05-09 16:35:49.125815+00	t	Kepler-221	Transit	2014	1256.45	\N
31	Kepler-626 b	5.86	2.29	\N	14.48585199	f	0	\N	784	\N	\N	\N	f	f	2026-05-09 16:35:49.125819+00	2026-05-09 16:35:49.125822+00	t	Kepler-626	Transit	2016	2073.19	\N
32	Kepler-1549 b	7.13	2.57	\N	214.886545	f	0	\N	286	\N	\N	\N	f	f	2026-05-09 16:35:49.125827+00	2026-05-09 16:35:49.125829+00	t	Kepler-1549	Transit	2016	2619.2	\N
33	K2-62 c	4.62	1.99	\N	16.19697	f	0	\N	495	\N	\N	\N	f	f	2026-05-09 16:35:49.125832+00	2026-05-09 16:35:49.125833+00	t	K2-62	Transit	2016	366.82	\N
34	Kepler-1149 b	2.67	1.44	\N	3.73089898	f	0	\N	1128	\N	\N	\N	f	f	2026-05-09 16:35:49.125837+00	2026-05-09 16:35:49.125838+00	t	Kepler-1149	Transit	2016	3971.7	\N
35	Kepler-1288 b	1.46	1.12	\N	2.76122421	f	0	\N	2017	\N	\N	\N	f	f	2026-05-09 16:35:49.12584+00	2026-05-09 16:35:49.125841+00	t	Kepler-1288	Transit	2016	2655.16	\N
36	Kepler-128 b	3.79	1.421	\N	15	f	0	\N	968	\N	\N	\N	f	f	2026-05-09 16:35:49.125843+00	2026-05-09 16:35:49.125845+00	t	Kepler-128	Transit	2013	1292.81	\N
37	Kepler-1245 b	2.67	1.44	\N	4.35409304	f	0	\N	1043	\N	\N	\N	f	f	2026-05-09 16:35:49.12585+00	2026-05-09 16:35:49.125851+00	t	Kepler-1245	Transit	2016	2628.61	\N
38	Kepler-1068 b	12.8	3.63	\N	16.92344113	f	0	\N	702	\N	\N	\N	f	f	2026-05-09 16:35:49.125853+00	2026-05-09 16:35:49.125854+00	t	Kepler-1068	Transit	2016	4806.27	\N
39	Kepler-150 e	9.91	3.12	\N	30.826557	f	0	\N	544	\N	\N	\N	f	f	2026-05-09 16:35:49.125856+00	2026-05-09 16:35:49.125856+00	t	Kepler-150	Transit	2014	2906.35	\N
40	Kepler-272 c	97.8	1.79	\N	6.057342	f	0	\N	947	\N	\N	\N	f	f	2026-05-09 16:35:49.125859+00	2026-05-09 16:35:49.12586+00	t	Kepler-272	Transit	2014	2901.51	\N
41	Kepler-152 c	6.3	2.39	\N	88.255055	f	0	\N	326	\N	\N	\N	f	f	2026-05-09 16:35:49.125862+00	2026-05-09 16:35:49.125863+00	t	Kepler-152	Transit	2014	1438.64	\N
42	Kepler-1506 b	2.3	1.32	\N	14.0329154	f	0	\N	783	\N	\N	\N	f	f	2026-05-09 16:35:49.125865+00	2026-05-09 16:35:49.125865+00	t	Kepler-1506	Transit	2016	7716.92	\N
43	CoRoT-3 b	6883.91	11.32	\N	4.2568	f	0	\N	1695	\N	\N	\N	f	f	2026-05-09 16:35:49.125867+00	2026-05-09 16:35:49.125868+00	t	CoRoT-3	Transit	2008	2507.39	\N
44	HD 205739 b	435.41	13.6	\N	279.8	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.12587+00	2026-05-09 16:35:49.125871+00	t	HD 205739	Radial Velocity	2008	301.72	\N
45	HD 224693 b	222.481	14	\N	26.6904	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125873+00	2026-05-09 16:35:49.125874+00	t	HD 224693	Radial Velocity	2006	304.96	\N
46	HD 16417 b	22.1	5	\N	17.24	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125876+00	2026-05-09 16:35:49.125877+00	t	HD 16417	Radial Velocity	2008	82.82	\N
47	HD 19994 b	435.41	13.6	\N	466.2	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125879+00	2026-05-09 16:35:49.12588+00	t	HD 19994	Radial Velocity	2003	73.46	\N
48	GJ 179 b	301.93698665	13.8	\N	2288	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125882+00	2026-05-09 16:35:49.125883+00	t	GJ 179	Radial Velocity	2009	40.3	\N
49	GQ Lup b	6356	33.6	\N	\N	f	0	\N	2650	\N	\N	\N	f	f	2026-05-09 16:35:49.125886+00	2026-05-09 16:35:49.125887+00	t	GQ Lup	Imaging	2004	493.05	\N
50	HD 37605 b	854.9627	13.2	\N	55.01292	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125889+00	2026-05-09 16:35:49.125891+00	t	HD 37605	Radial Velocity	2004	152.6	\N
51	HD 33283 b	104.56607	12.5	\N	18.1991	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125896+00	2026-05-09 16:35:49.125905+00	t	HD 33283	Radial Velocity	2006	293.09	\N
52	HD 9446 b	222.472	14	\N	30.052	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.12591+00	2026-05-09 16:35:49.125912+00	t	HD 9446	Radial Velocity	2009	164.22	\N
53	HD 134987 c	260	13.9	\N	5000	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125917+00	2026-05-09 16:35:49.125918+00	t	HD 134987	Radial Velocity	2009	85.39	\N
54	HD 110014 b	3524.59	12.4	\N	835.477	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.12592+00	2026-05-09 16:35:49.125921+00	t	HD 110014	Radial Velocity	2009	328.63	\N
55	HD 79498 b	425.8922	13.6	\N	1807	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125922+00	2026-05-09 16:35:49.125923+00	t	HD 79498	Radial Velocity	2011	159.65	\N
56	HD 45652 b	137.62039	14.3	\N	44.073	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125924+00	2026-05-09 16:35:49.125925+00	t	HD 45652	Radial Velocity	2008	113.68	\N
57	HIP 79431 b	667.415	13.4	\N	111.7	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125927+00	2026-05-09 16:35:49.125927+00	t	HIP 79431	Radial Velocity	2009	47.4	\N
58	GJ 876 b	723.2235	13.3	\N	61.1166	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125929+00	2026-05-09 16:35:49.12593+00	t	GJ 876	Radial Velocity	1998	15.25	\N
59	HD 86226 b	143.0235	14.3	\N	1628	f	0	\N	176	\N	\N	\N	f	f	2026-05-09 16:35:49.125931+00	2026-05-09 16:35:49.125932+00	t	HD 86226	Radial Velocity	2009	149	\N
60	HD 47186 c	111.42	13	\N	1353.6	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125933+00	2026-05-09 16:35:49.125934+00	t	HD 47186	Radial Velocity	2008	122.17	\N
61	HD 148156 b	270.144	13.9	\N	1027	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125935+00	2026-05-09 16:35:49.125936+00	t	HD 148156	Radial Velocity	2009	186.33	\N
62	HD 86226 c	7.25	2.16	\N	3.98442	f	0	\N	1311	\N	\N	\N	f	f	2026-05-09 16:35:49.125938+00	2026-05-09 16:35:49.125939+00	t	HD 86226	Transit	2020	149	\N
63	HIP 14810 c	416.3573	13.6	\N	147.747	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.12594+00	2026-05-09 16:35:49.125941+00	t	HIP 14810	Radial Velocity	2006	164.64	\N
64	HIP 14810 b	1239.537	13	\N	6.673892	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125942+00	2026-05-09 16:35:49.125943+00	t	HIP 14810	Radial Velocity	2005	164.64	\N
65	GJ 876 d	6.83	2.51	\N	1.93778	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125944+00	2026-05-09 16:35:49.125945+00	t	GJ 876	Radial Velocity	2005	15.25	\N
66	GJ 876 e	14.6	3.92	\N	124.26	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125947+00	2026-05-09 16:35:49.125948+00	t	GJ 876	Radial Velocity	2010	15.25	\N
67	gam1 Leo b	2790.43	12.5	\N	428.5	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125949+00	2026-05-09 16:35:49.12595+00	t	gam1 Leo	Radial Velocity	2009	130.1	\N
68	HD 156411 b	235.18	14	\N	842.2	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125951+00	2026-05-09 16:35:49.125952+00	t	HD 156411	Radial Velocity	2009	185.47	\N
69	HD 8535 b	216.1244	14	\N	1313	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125953+00	2026-05-09 16:35:49.125954+00	t	HD 8535	Radial Velocity	2010	180.82	\N
70	HD 37605 c	1013.8777	13.1	\N	2720	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125955+00	2026-05-09 16:35:49.125956+00	t	HD 37605	Radial Velocity	2012	152.6	\N
71	HD 1605 c	1150.5446	13	\N	2149	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125958+00	2026-05-09 16:35:49.125958+00	t	HD 1605	Radial Velocity	2015	289.64	\N
72	BD+20 2457 b	6807.63	12.1	\N	379.63	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.12596+00	2026-05-09 16:35:49.12596+00	t	BD+20 2457	Radial Velocity	2009	5021.86	\N
73	HD 240210 b	1655.82	12.8	\N	501.75	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125962+00	2026-05-09 16:35:49.125963+00	t	HD 240210	Radial Velocity	2009	1214.62	\N
74	CoRoT-17 b	772.29	11.43	\N	3.7681	f	0	\N	1626	\N	\N	\N	f	f	2026-05-09 16:35:49.125964+00	2026-05-09 16:35:49.125965+00	t	CoRoT-17	Transit	2011	3835.99	\N
75	HD 132563 b	473.547	13.6	\N	1544	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125966+00	2026-05-09 16:35:49.125967+00	t	HD 132563	Radial Velocity	2011	342.97	\N
76	HD 55696 b	1357.12729789	12.9	\N	1827	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125968+00	2026-05-09 16:35:49.125969+00	t	HD 55696	Radial Velocity	2018	254.3	\N
77	HD 148164 b	390.9309	13.7	\N	328.55	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125971+00	2026-05-09 16:35:49.125971+00	t	HD 148164	Radial Velocity	2018	251.78	\N
78	24 Sex c	273.32	13.9	\N	883	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125973+00	2026-05-09 16:35:49.125973+00	t	24 Sex	Radial Velocity	2010	235.06	\N
79	HD 22781 b	4338.2	12.3	\N	528.07	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125975+00	2026-05-09 16:35:49.125976+00	t	HD 22781	Radial Velocity	2011	106.34	\N
80	HD 148164 c	1640.0028	12.8	\N	5062	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125977+00	2026-05-09 16:35:49.125978+00	t	HD 148164	Radial Velocity	2018	251.78	\N
81	HD 90156 b	17.98	4.43	\N	49.77	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125979+00	2026-05-09 16:35:49.12598+00	t	HD 90156	Radial Velocity	2009	71.59	\N
82	HD 45350 b	568.89	13.5	\N	963.6	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125981+00	2026-05-09 16:35:49.125982+00	t	HD 45350	Radial Velocity	2004	152.88	\N
83	MOA-2009-BLG-266L b	10.4	3.21	\N	2800	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125984+00	2026-05-09 16:35:49.125984+00	t	MOA-2009-BLG-266L	Microlensing	2011	9915.14	\N
84	Kepler-595 c	3.3	1.009	\N	12.38602	f	0	\N	679	\N	\N	\N	f	f	2026-05-09 16:35:49.125986+00	2026-05-09 16:35:49.125986+00	t	Kepler-595	Transit	2020	2097.21	\N
85	Kepler-595 b	17.4	3.708	\N	25.3029092	f	0	\N	535	\N	\N	\N	f	f	2026-05-09 16:35:49.125988+00	2026-05-09 16:35:49.125989+00	t	Kepler-595	Transit	2016	2097.21	\N
86	HD 177830 c	47.6725	7.87	\N	110.9	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.12599+00	2026-05-09 16:35:49.125991+00	t	HD 177830	Radial Velocity	2010	204.72	\N
87	OGLE-TR-111 b	174.799	11.421971	\N	4.0144463	f	0	\N	1019	\N	\N	\N	f	f	2026-05-09 16:35:49.125992+00	2026-05-09 16:35:49.125993+00	t	OGLE-TR-111	Transit	2004	3484.42	\N
88	PSR B1257+12 b	0.02	0.338	\N	25.262	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125994+00	2026-05-09 16:35:49.125995+00	t	PSR B1257+12	Pulsar Timing	1994	1956.94	\N
89	PSR B1257+12 d	3.9	1.8	\N	98.2114	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.125997+00	2026-05-09 16:35:49.125997+00	t	PSR B1257+12	Pulsar Timing	1992	1956.94	\N
90	HD 21749 c	3.7	0.892	\N	7.78993	f	0	\N	701	\N	\N	\N	f	f	2026-05-09 16:35:49.125999+00	2026-05-09 16:35:49.125999+00	t	GJ 143	Transit	2019	53.23	\N
91	eps Ind A b	2005.49724817	12.7	\N	16510	f	0	\N	275	\N	\N	\N	f	f	2026-05-09 16:35:49.126001+00	2026-05-09 16:35:49.126002+00	t	eps Ind A	Radial Velocity	2019	11.87	\N
92	CoRoT-18 b	1102.82	14.68	\N	1.9000693	f	0	\N	1550	\N	\N	\N	f	f	2026-05-09 16:35:49.126003+00	2026-05-09 16:35:49.126004+00	t	CoRoT-18	Transit	2011	2494.73	\N
93	Kepler-45 b	160.497	10.76	\N	2.455239	f	0	\N	1000	\N	\N	\N	f	f	2026-05-09 16:35:49.126005+00	2026-05-09 16:35:49.126006+00	t	Kepler-45	Transit	2011	1245.75	\N
94	WASP-23 b	280.95	10.783	\N	2.9444256	f	0	\N	1076.55	\N	\N	\N	f	f	2026-05-09 16:35:49.126011+00	2026-05-09 16:35:49.126011+00	t	WASP-23	Transit	2010	676.74	\N
95	HD 107148 b	66.741	9.6	\N	48.056	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126013+00	2026-05-09 16:35:49.126014+00	t	HD 107148	Radial Velocity	2005	161.17	\N
96	SWEEPS-11 b	3082.82	12.666	\N	1.796	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126015+00	2026-05-09 16:35:49.126016+00	t	SWEEPS-11	Transit	2006	27723.26	\N
97	OGLE-TR-211 b	327.351	15.244	\N	3.67724	f	0	\N	1686	\N	\N	\N	f	f	2026-05-09 16:35:49.126017+00	2026-05-09 16:35:49.126018+00	t	OGLE-TR-211	Transit	2007	4942.11	\N
98	Lupus-TR-3 b	257.431	9.976	\N	3.91405	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126019+00	2026-05-09 16:35:49.12602+00	t	Lupus-TR-3	Transit	2007	2522.52	\N
99	OGLE-2005-BLG-390L b	5.5	2.21	\N	3285	f	0	\N	50	\N	\N	\N	f	f	2026-05-09 16:35:49.126021+00	2026-05-09 16:35:49.126022+00	t	OGLE-2005-BLG-390L	Microlensing	2005	21526.3	\N
100	HN Peg b	6991.57	11.7768	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126024+00	2026-05-09 16:35:49.126024+00	t	HN Peg	Imaging	2006	59.09	\N
101	MOA-2009-BLG-387L b	830	13.2	\N	1980	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126026+00	2026-05-09 16:35:49.126026+00	t	MOA-2009-BLG-387L	Microlensing	2010	18558.28	\N
102	GJ 674 b	11.09	3.33	\N	4.6938	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126028+00	2026-05-09 16:35:49.126028+00	t	GJ 674	Radial Velocity	2007	14.84	\N
103	CoRoT-11 b	740.51	16.03	\N	2.99433	f	0	\N	1657	\N	\N	\N	f	f	2026-05-09 16:35:49.12603+00	2026-05-09 16:35:49.126031+00	t	CoRoT-11	Transit	2010	2136.44	\N
104	2MASS J04414489+2301513 b	2383.6	12.6	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126032+00	2026-05-09 16:35:49.126033+00	t	2MASS J04414489+2301513	Imaging	2010	392.77	\N
105	GJ 3634 b	8.4	2.83	\N	2.64561	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126034+00	2026-05-09 16:35:49.126035+00	t	GJ 3634	Radial Velocity	2010	66.46	\N
106	CoRoT-13 b	415.704	9.92	\N	4.03519	f	0	\N	1700	\N	\N	\N	f	f	2026-05-09 16:35:49.126036+00	2026-05-09 16:35:49.126037+00	t	CoRoT-13	Transit	2010	3747.3	\N
107	OGLE-TR-10 b	197.046	14.011	\N	3.101278	f	0	\N	1702	\N	\N	\N	f	f	2026-05-09 16:35:49.126039+00	2026-05-09 16:35:49.126039+00	t	OGLE-TR-10	Transit	2004	4386.7	\N
108	HD 27442 b	495.8	13.5	\N	428.1	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126041+00	2026-05-09 16:35:49.126041+00	t	HD 27442	Radial Velocity	2000	59.59	\N
109	GJ 3021 b	1071.04	13.1	\N	133.71	f	0	\N	350	\N	\N	\N	f	f	2026-05-09 16:35:49.126043+00	2026-05-09 16:35:49.126044+00	t	GJ 3021	Radial Velocity	2000	57.26	\N
110	CoRoT-8 b	69.92	6.39	\N	6.21229	f	0	\N	870	\N	\N	\N	f	f	2026-05-09 16:35:49.126045+00	2026-05-09 16:35:49.126046+00	t	CoRoT-8	Transit	2010	1050.34	\N
111	Kepler-18 c	17.3	5.49	\N	7.64159	f	0	\N	899	\N	\N	\N	f	f	2026-05-09 16:35:49.126047+00	2026-05-09 16:35:49.126048+00	t	Kepler-18	Transit	2011	1412.41	\N
112	Kepler-18 b	6.9	2	\N	3.504725	f	0	\N	1165	\N	\N	\N	f	f	2026-05-09 16:35:49.126049+00	2026-05-09 16:35:49.12605+00	t	Kepler-18	Transit	2011	1412.41	\N
113	HD 46375 b	71.8	10	\N	3.023573	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126052+00	2026-05-09 16:35:49.126052+00	t	HD 46375	Radial Velocity	2000	96.39	\N
114	HD 221287 b	982.05	13.1	\N	456.1	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126054+00	2026-05-09 16:35:49.126055+00	t	HD 221287	Radial Velocity	2007	182.4	\N
115	HD 33564 b	2892.1	12.5	\N	388	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126056+00	2026-05-09 16:35:49.126057+00	t	HD 33564	Radial Velocity	2005	68.34	\N
116	HD 189733 b	359.1479	12.66617	\N	2.21857567	f	0	\N	1209	\N	\N	\N	f	f	2026-05-09 16:35:49.126059+00	2026-05-09 16:35:49.126059+00	t	HD 189733	Radial Velocity	2005	64.46	\N
117	Kepler-4 b	24.472	4.002	\N	3.21346	f	0	\N	1650	\N	\N	\N	f	f	2026-05-09 16:35:49.126061+00	2026-05-09 16:35:49.126061+00	t	Kepler-4	Transit	2009	1591.37	\N
118	WASP-38 b	1093.3352	13.78707	\N	6.87188	f	0	\N	1250	\N	\N	\N	f	f	2026-05-09 16:35:49.126063+00	2026-05-09 16:35:49.126064+00	t	WASP-38	Transit	2010	444.35	\N
119	Kepler-30 c	640	12.3	\N	60.323105	f	0	\N	411	\N	\N	\N	f	f	2026-05-09 16:35:49.126065+00	2026-05-09 16:35:49.126066+00	t	Kepler-30	Transit	2012	2981.79	\N
120	Kepler-18 d	16.4	6.98	\N	14.85888	f	0	\N	720	\N	\N	\N	f	f	2026-05-09 16:35:49.126067+00	2026-05-09 16:35:49.126068+00	t	Kepler-18	Transit	2011	1412.41	\N
121	HAT-P-37 b	371.528	13.204	\N	2.797436	f	0	\N	1271	\N	\N	\N	f	f	2026-05-09 16:35:49.126069+00	2026-05-09 16:35:49.12607+00	t	HAT-P-37	Transit	2011	1273.95	\N
122	HD 129445 b	797.74930157	13.3	\N	1840	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126072+00	2026-05-09 16:35:49.126072+00	t	HD 129445	Radial Velocity	2009	219.96	\N
123	Kepler-419 c	2320.1	12.6	\N	675.47	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126074+00	2026-05-09 16:35:49.126074+00	t	Kepler-419	Transit Timing Variations	2014	3298.61	\N
124	HD 70573 b	1900	12.8	\N	851.8	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126076+00	2026-05-09 16:35:49.126077+00	t	HD 70573	Radial Velocity	2007	193.03	\N
125	HD 47536 b	2330	12.6	\N	712.13	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126078+00	2026-05-09 16:35:49.126079+00	t	HD 47536	Radial Velocity	2002	399.66	\N
126	WASP-67 b	136.6669	12.89035	\N	4.61442	f	0	\N	1003	\N	\N	\N	f	f	2026-05-09 16:35:49.12608+00	2026-05-09 16:35:49.126081+00	t	WASP-67	Transit	2012	617.96	\N
127	CoRoT-14 b	2415.4	12.22	\N	1.51214	f	0	\N	1952	\N	\N	\N	f	f	2026-05-09 16:35:49.126082+00	2026-05-09 16:35:49.126083+00	t	CoRoT-14	Transit	2010	5690.12	\N
128	MOA-2008-BLG-310L b	23.4	5.18	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126085+00	2026-05-09 16:35:49.126085+00	t	MOA-2008-BLG-310L	Microlensing	2009	25114.01	\N
129	Kepler-419 b	794.5	10.8	\N	69.7546	f	0	\N	613	\N	\N	\N	f	f	2026-05-09 16:35:49.126087+00	2026-05-09 16:35:49.126088+00	t	Kepler-419	Transit	2014	3298.61	\N
130	WASP-43 b	565.714	10.424	\N	0.813475	f	0	\N	1426.7	\N	\N	\N	f	f	2026-05-09 16:35:49.126089+00	2026-05-09 16:35:49.12609+00	t	WASP-43	Transit	2011	282.93	\N
131	HD 11964 c	25	5.38	\N	37.91	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126091+00	2026-05-09 16:35:49.126092+00	t	HD 11964	Radial Velocity	2008	109.38	\N
132	CoRoT-6 b	940.74	13.068	\N	8.886593	f	0	\N	1017	\N	\N	\N	f	f	2026-05-09 16:35:49.126093+00	2026-05-09 16:35:49.126094+00	t	CoRoT-6	Transit	2009	2104.67	\N
133	WASP-31 b	151.916	17.363	\N	3.4059096	f	0	\N	1423.7	\N	\N	\N	f	f	2026-05-09 16:35:49.126096+00	2026-05-09 16:35:49.126096+00	t	WASP-31	Transit	2010	1251.88	\N
134	HD 108236 f	4.72	2.017	\N	29.54115	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126098+00	2026-05-09 16:35:49.126098+00	t	HD 108236	Transit	2021	210.69	\N
135	Kepler-59 c	3.81	1.98	\N	17.9801235	f	0	\N	752	\N	\N	\N	f	f	2026-05-09 16:35:49.1261+00	2026-05-09 16:35:49.126101+00	t	Kepler-59	Transit	2012	3793.91	\N
136	WASP-8 c	3003.37	12.5	\N	4323	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126102+00	2026-05-09 16:35:49.126103+00	t	WASP-8	Radial Velocity	2013	293.41	\N
137	HD 154857 c	819.97	13.2	\N	3452	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126104+00	2026-05-09 16:35:49.126105+00	t	HD 154857	Radial Velocity	2014	206.94	\N
138	KOI-217 b	\N	12.442	\N	3.90512	f	0	\N	1046	\N	\N	\N	f	f	2026-05-09 16:35:49.126107+00	2026-05-09 16:35:49.126107+00	t	KOI-217	Transit	2010	2983.35	\N
139	Kepler-416 b	58.2	2.48	\N	6.319	f	0	\N	986	\N	\N	\N	f	f	2026-05-09 16:35:49.126109+00	2026-05-09 16:35:49.12611+00	t	Kepler-416	Transit Timing Variations	2014	2253.15	\N
140	Kepler-37 e	8.1	0.37	\N	51.196	f	0	\N	401	\N	\N	\N	f	f	2026-05-09 16:35:49.126111+00	2026-05-09 16:35:49.126112+00	t	Kepler-37	Transit Timing Variations	2014	208.48	\N
141	HAT-P-22 b	785.0401	12.89035	\N	3.21222	f	0	\N	1463	\N	\N	\N	f	f	2026-05-09 16:35:49.126113+00	2026-05-09 16:35:49.126114+00	t	HAT-P-22	Transit	2010	266.68	\N
142	CHXR 73 b	3994.486	12.3	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126115+00	2026-05-09 16:35:49.126116+00	t	CHXR 73	Imaging	2006	620.92	\N
143	FU Tau b	5085.28	12.2	\N	\N	f	0	\N	2375	\N	\N	\N	f	f	2026-05-09 16:35:49.126118+00	2026-05-09 16:35:49.126118+00	t	FU Tau	Imaging	2008	435.4	\N
144	GJ 667 C b	5.68	2.25	\N	7.203	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.12612+00	2026-05-09 16:35:49.12612+00	t	GJ 667 C	Radial Velocity	2012	23.63	\N
145	HD 187123 b	166.218	14.2	\N	3.0965828	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126122+00	2026-05-09 16:35:49.126123+00	t	HD 187123	Radial Velocity	1998	149.88	\N
146	HAT-P-18 b	62.61	11.153	\N	5.508023	f	0	\N	852	\N	\N	\N	f	f	2026-05-09 16:35:49.126124+00	2026-05-09 16:35:49.126125+00	t	HAT-P-18	Transit	2010	526.42	\N
147	Kepler-59 b	4.1	1.1	\N	11.8681707	f	0	\N	864	\N	\N	\N	f	f	2026-05-09 16:35:49.126126+00	2026-05-09 16:35:49.126127+00	t	Kepler-59	Transit	2012	3793.91	\N
148	Kepler-53 b	111	2.89	\N	18.6489525	f	0	\N	701	\N	\N	\N	f	f	2026-05-09 16:35:49.126128+00	2026-05-09 16:35:49.126129+00	t	Kepler-53	Transit	2012	4455.52	\N
149	HD 82943 c	622.603	13.4	\N	220.078	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126131+00	2026-05-09 16:35:49.126131+00	t	HD 82943	Radial Velocity	2003	89.99	\N
150	HD 82943 b	534.25	13.5	\N	441.47	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126133+00	2026-05-09 16:35:49.126134+00	t	HD 82943	Radial Velocity	2003	89.99	\N
151	UZ For b	2002.2	\N	\N	5840	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126135+00	2026-05-09 16:35:49.126136+00	t	UZ For	Eclipse Timing Variations	2011	781.48	\N
152	Kepler-69 b	5.65	2.24	\N	13.722341	f	0	\N	779	\N	\N	\N	f	f	2026-05-09 16:35:49.126137+00	2026-05-09 16:35:49.126138+00	t	Kepler-69	Transit	2013	2382.98	\N
153	HIP 5158 c	4780.1632	12.2	\N	9017.76	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126139+00	2026-05-09 16:35:49.12614+00	t	HIP 5158	Radial Velocity	2011	168.3	\N
154	HU Aqr AB b	1875.197	12.8	\N	2390	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126141+00	2026-05-09 16:35:49.126142+00	t	HU Aqr	Eclipse Timing Variations	2011	626.87	\N
155	Kepler-58 c	53	2.86	\N	15.5741568	f	0	\N	799	\N	\N	\N	f	f	2026-05-09 16:35:49.126144+00	2026-05-09 16:35:49.126144+00	t	Kepler-58	Transit	2012	3161.27	\N
156	Kepler-30 b	11.3	3.9	\N	29.33434	f	0	\N	524	\N	\N	\N	f	f	2026-05-09 16:35:49.126146+00	2026-05-09 16:35:49.126146+00	t	Kepler-30	Transit	2012	2981.79	\N
157	Kepler-65 d	4.14	1.52	\N	8.13123	f	0	\N	1117	\N	\N	\N	f	f	2026-05-09 16:35:49.126148+00	2026-05-09 16:35:49.126149+00	t	Kepler-65	Transit	2012	990.63	\N
158	Kepler-52 c	45.4	1.84	\N	16.3850021	f	0	\N	433	\N	\N	\N	f	f	2026-05-09 16:35:49.12615+00	2026-05-09 16:35:49.126151+00	t	Kepler-52	Transit	2012	1048.73	\N
159	Kepler-55 b	43	2.43	\N	27.9481449	f	0	\N	400	\N	\N	\N	f	f	2026-05-09 16:35:49.126152+00	2026-05-09 16:35:49.126153+00	t	Kepler-55	Transit	2012	1887.78	\N
160	UZ For c	2447.2	\N	\N	1916.25	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126155+00	2026-05-09 16:35:49.126155+00	t	UZ For	Eclipse Timing Variations	2011	781.48	\N
161	Kepler-413 b	67	4.347	\N	66.262	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126157+00	2026-05-09 16:35:49.126157+00	t	Kepler-413	Transit	2014	2764.29	\N
162	WASP-14 b	2809.6172	15.46842	\N	2.24375	f	0	\N	1872	\N	\N	\N	f	f	2026-05-09 16:35:49.126159+00	2026-05-09 16:35:49.12616+00	t	WASP-14	Transit	2008	528.36	\N
163	HAT-P-2 b	2866.81223114	10.659759	\N	5.6335158	f	0	\N	1540	\N	\N	\N	f	f	2026-05-09 16:35:49.126161+00	2026-05-09 16:35:49.126162+00	t	HAT-P-2	Transit	2007	416.74	\N
164	HAT-P-42 b	331.801	14.348	\N	4.641878	f	0	\N	1428	\N	\N	\N	f	f	2026-05-09 16:35:49.126163+00	2026-05-09 16:35:49.126164+00	t	HAT-P-42	Transit	2012	1321.71	\N
165	WASP-59 b	274.276	8.687	\N	7.919585	f	0	\N	670	\N	\N	\N	f	f	2026-05-09 16:35:49.126166+00	2026-05-09 16:35:49.126166+00	t	WASP-59	Transit	2012	378.13	\N
166	HAT-P-39 b	190.372	17.609	\N	3.54387	f	0	\N	1752	\N	\N	\N	f	f	2026-05-09 16:35:49.126168+00	2026-05-09 16:35:49.126168+00	t	HAT-P-39	Transit	2012	2273.32	\N
167	alf Ari b	572.07	13.4	\N	380.8	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.12617+00	2026-05-09 16:35:49.126171+00	t	alf Ari	Radial Velocity	2010	65.92	\N
168	KOI-55 b	0.44	0.759	\N	0.240104	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126172+00	2026-05-09 16:35:49.126173+00	t	KOI-55	Orbital Brightness Modulation	2011	4015.05	\N
169	GJ 536 b	6.37	2.41	\N	8.70874	f	0	\N	451	\N	\N	\N	f	f	2026-05-09 16:35:49.126174+00	2026-05-09 16:35:49.126175+00	t	GJ 536	Radial Velocity	2016	33.95	\N
170	WTS-2 b	355.9696	15.277867	\N	1.0187068	f	0	\N	2000	\N	\N	\N	f	f	2026-05-09 16:35:49.126177+00	2026-05-09 16:35:49.126177+00	t	WTS-2	Transit	2014	3361.91	\N
171	KELT-6 c	1179.1493	13	\N	1276	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126179+00	2026-05-09 16:35:49.12618+00	t	KELT-6	Radial Velocity	2015	785.14	\N
172	KOI-55 c	0.655	0.867	\N	0.342887	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126181+00	2026-05-09 16:35:49.126182+00	t	KOI-55	Orbital Brightness Modulation	2011	4015.05	\N
173	Ross 458 c	1906.98	14.01125	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126183+00	2026-05-09 16:35:49.126184+00	t	Ross 458	Imaging	2010	37.54	\N
174	Kepler-38 b	122	4.3	\N	105.599	f	0	\N	475	\N	\N	\N	f	f	2026-05-09 16:35:49.126186+00	2026-05-09 16:35:49.126186+00	t	Kepler-38	Transit	2012	3831	\N
175	HD 114783 b	349.6	13.7	\N	493.7	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126188+00	2026-05-09 16:35:49.126188+00	t	HD 114783	Radial Velocity	2001	68.7	\N
176	HAT-P-13 b	270.462	14.258	\N	2.91625	f	0	\N	1740	\N	\N	\N	f	f	2026-05-09 16:35:49.12619+00	2026-05-09 16:35:49.126191+00	t	HAT-P-13	Transit	2009	804.99	\N
177	ROXs 42 B b	2860	12.5	\N	\N	f	0	\N	1975	\N	\N	\N	f	f	2026-05-09 16:35:49.126192+00	2026-05-09 16:35:49.126193+00	t	ROXs 42 B	Imaging	2013	468.33	\N
178	HD 95086 b	1589	12.9	\N	\N	f	0	\N	1000	\N	\N	\N	f	f	2026-05-09 16:35:49.126195+00	2026-05-09 16:35:49.126195+00	t	HD 95086	Imaging	2013	281.24	\N
179	RR Cae b	1334.886	13	\N	4343.5	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.1262+00	2026-05-09 16:35:49.1262+00	t	RR Cae	Eclipse Timing Variations	2012	69.12	\N
180	Kepler-50 c	8.2	2.17	\N	9.37647	f	0	\N	1125	\N	\N	\N	f	f	2026-05-09 16:35:49.126202+00	2026-05-09 16:35:49.126203+00	t	Kepler-50	Transit	2012	815.75	\N
181	HD 233604 b	2089.644	12.7	\N	192	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126204+00	2026-05-09 16:35:49.126205+00	t	HD 233604	Radial Velocity	2013	2762.73	\N
182	WD 0806-661 b	2542.627256	12.6	\N	\N	f	0	\N	340	\N	\N	\N	f	f	2026-05-09 16:35:49.126206+00	2026-05-09 16:35:49.126207+00	t	WD 0806-661	Imaging	2011	62.77	\N
183	Kepler-63 b	120	6.11	\N	9.4341505	f	0	\N	791	\N	\N	\N	f	f	2026-05-09 16:35:49.126208+00	2026-05-09 16:35:49.126209+00	t	Kepler-63	Transit	2013	632.85	\N
184	Kepler-77 b	136.661	10.761	\N	3.57878087	f	0	\N	1440	\N	\N	\N	f	f	2026-05-09 16:35:49.126211+00	2026-05-09 16:35:49.126211+00	t	Kepler-77	Transit	2013	2085.48	\N
185	HAT-P-44 c	1271.3	13	\N	872.2	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126213+00	2026-05-09 16:35:49.126214+00	t	HAT-P-44	Radial Velocity	2014	1134.53	\N
186	HATS-5 b	75.323	10.223	\N	4.763387	f	0	\N	1025	\N	\N	\N	f	f	2026-05-09 16:35:49.126215+00	2026-05-09 16:35:49.126216+00	t	HATS-5	Transit	2014	803.6	\N
187	HD 10180 d	3295.88058059	\N	\N	16.357	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126217+00	2026-05-09 16:35:49.126218+00	t	HD 10180	Radial Velocity	2010	127.07	\N
188	WTS-1 b	1274.44	16.7	\N	3.352057	f	0	\N	1500	\N	\N	\N	f	f	2026-05-09 16:35:49.126219+00	2026-05-09 16:35:49.12622+00	t	WTS-1	Transit	2012	7651.65	\N
189	Kepler-297 c	42.1	6.54	\N	74.920137	f	0	\N	409	\N	\N	\N	f	f	2026-05-09 16:35:49.126222+00	2026-05-09 16:35:49.126222+00	t	Kepler-297	Transit	2014	2257.46	\N
190	Kepler-347 b	4.54	1.97	\N	12.79836	f	0	\N	908	\N	\N	\N	f	f	2026-05-09 16:35:49.126224+00	2026-05-09 16:35:49.126224+00	t	Kepler-347	Transit	2014	4236.38	\N
191	CoRoT-26 b	165.26	14.12	\N	4.20474	f	0	\N	1600	\N	\N	\N	f	f	2026-05-09 16:35:49.126226+00	2026-05-09 16:35:49.126227+00	t	CoRoT-26	Transit	2013	3408.92	\N
192	CoRoT-25 b	85.81	12.11	\N	4.86069	f	0	\N	1330	\N	\N	\N	f	f	2026-05-09 16:35:49.126228+00	2026-05-09 16:35:49.126229+00	t	CoRoT-25	Transit	2013	3599.07	\N
193	Kepler-186 b	1.24	1.07	\N	3.8867907	f	0	\N	571	\N	\N	\N	f	f	2026-05-09 16:35:49.12623+00	2026-05-09 16:35:49.126231+00	t	Kepler-186	Transit	2014	579.23	\N
194	91 Aqr b	1017	13.1	\N	181.4	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126232+00	2026-05-09 16:35:49.126233+00	t	91 Aqr	Radial Velocity	2013	143.61	\N
195	GJ 163 b	10.6	3.25	\N	8.63182	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126234+00	2026-05-09 16:35:49.126235+00	t	GJ 163	Radial Velocity	2013	49.34	\N
196	Kepler-27 c	4385.87	4.9	\N	31.3309	f	0	\N	481	\N	\N	\N	f	f	2026-05-09 16:35:49.126237+00	2026-05-09 16:35:49.126237+00	t	Kepler-27	Transit	2011	3406.24	\N
197	Kepler-27 b	2895.31	4	\N	15.3348	f	0	\N	610	\N	\N	\N	f	f	2026-05-09 16:35:49.126239+00	2026-05-09 16:35:49.126239+00	t	Kepler-27	Transit	2011	3406.24	\N
198	Kepler-139 c	13	3.38	\N	157.072878	f	0	\N	350	\N	\N	\N	f	f	2026-05-09 16:35:49.126241+00	2026-05-09 16:35:49.126242+00	t	Kepler-139	Transit	2014	1275.39	\N
199	Kepler-311 c	2.63	1.43	\N	19.738286	f	0	\N	744	\N	\N	\N	f	f	2026-05-09 16:35:49.126243+00	2026-05-09 16:35:49.126244+00	t	Kepler-311	Transit	2014	2539.63	\N
200	BD-06 1339 b	1523.03372634	\N	\N	3.8728	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126245+00	2026-05-09 16:35:49.126246+00	t	BD-06 1339	Radial Velocity	2013	66.11	\N
201	Kepler-186 d	2.54	1.4	\N	13.342996	f	0	\N	379	\N	\N	\N	f	f	2026-05-09 16:35:49.126248+00	2026-05-09 16:35:49.126248+00	t	Kepler-186	Transit	2014	579.23	\N
202	Kepler-11 d	7.3	3.12	\N	22.6845	f	0	\N	653	\N	\N	\N	f	f	2026-05-09 16:35:49.12625+00	2026-05-09 16:35:49.12625+00	t	Kepler-11	Transit	2010	2108.1	\N
203	Kepler-11 b	1.9	1.8	\N	10.3039	f	0	\N	849	\N	\N	\N	f	f	2026-05-09 16:35:49.126252+00	2026-05-09 16:35:49.126253+00	t	Kepler-11	Transit	2010	2108.1	\N
204	Kepler-31 c	1493.7	5.3	\N	42.6318	f	0	\N	615	\N	\N	\N	f	f	2026-05-09 16:35:49.126254+00	2026-05-09 16:35:49.126255+00	t	Kepler-31	Transit	2011	5429.32	\N
205	Kepler-32 c	158.9	2	\N	8.7522	f	0	\N	451	\N	\N	\N	f	f	2026-05-09 16:35:49.126256+00	2026-05-09 16:35:49.126257+00	t	Kepler-32	Transit	2011	1056.25	\N
206	Kepler-1735 b	1.84	1.19429134	\N	7.71792984	f	0	\N	502	\N	\N	\N	f	f	2026-05-09 16:35:49.126258+00	2026-05-09 16:35:49.126259+00	t	Kepler-1735	Transit	2021	800.07	\N
207	HD 66141 b	1906.9	12.8	\N	480.5	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126261+00	2026-05-09 16:35:49.126261+00	t	HD 66141	Radial Velocity	2012	222.28	\N
208	HD 208527 b	3146.4	12.5	\N	875.5	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126263+00	2026-05-09 16:35:49.126263+00	t	HD 208527	Radial Velocity	2012	1018.27	\N
209	MOA-bin-1L b	1200	13	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126265+00	2026-05-09 16:35:49.126266+00	t	MOA-bin-1L	Microlensing	2012	16633.96	\N
210	GU Psc b	3591.3	14.179	\N	\N	f	0	\N	1050	\N	\N	\N	f	f	2026-05-09 16:35:49.126267+00	2026-05-09 16:35:49.126268+00	t	GU Psc	Imaging	2014	155.09	\N
211	GJ 163 c	6.8	2.5	\N	25.63058	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126269+00	2026-05-09 16:35:49.12627+00	t	GJ 163	Radial Velocity	2013	49.34	\N
212	GJ 163 d	29.4	5.92	\N	603.95116	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126271+00	2026-05-09 16:35:49.126272+00	t	GJ 163	Radial Velocity	2013	49.34	\N
213	Kepler-32 d	39.9089	2.7	\N	22.7802	f	0	\N	328	\N	\N	\N	f	f	2026-05-09 16:35:49.126273+00	2026-05-09 16:35:49.126274+00	t	Kepler-32	Transit	2012	1056.25	\N
214	Kepler-31 d	2161.244	3.9	\N	87.6451	f	0	\N	484	\N	\N	\N	f	f	2026-05-09 16:35:49.126276+00	2026-05-09 16:35:49.126276+00	t	Kepler-31	Transit	2014	5429.32	\N
215	HAT-P-45 b	283.492	15.984	\N	3.128992	f	0	\N	1652	\N	\N	\N	f	f	2026-05-09 16:35:49.126278+00	2026-05-09 16:35:49.126278+00	t	HAT-P-45	Transit	2014	974.03	\N
216	HAT-P-44 b	111.871	13.922	\N	4.301219	f	0	\N	1108	\N	\N	\N	f	f	2026-05-09 16:35:49.12628+00	2026-05-09 16:35:49.126281+00	t	HAT-P-44	Transit	2014	1134.53	\N
217	MOA-2010-BLG-073L b	3500	12.4	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126282+00	2026-05-09 16:35:49.126283+00	t	MOA-2010-BLG-073L	Microlensing	2012	9132.37	\N
218	HAT-P-27 b	197.05	11.43	\N	3.039577	f	0	\N	1091.99	\N	\N	\N	f	f	2026-05-09 16:35:49.126284+00	2026-05-09 16:35:49.126285+00	t	HAT-P-27	Transit	2011	649.61	\N
219	DENIS-P J082303.1-491201 b	9057.77	11.9	\N	246.36	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126286+00	2026-05-09 16:35:49.126287+00	t	DENIS-P J082303.1-491201	Astrometry	2013	67.74	\N
220	HIP 63242 b	2917.56	12.5	\N	124.6	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126289+00	2026-05-09 16:35:49.126289+00	t	HIP 63242	Radial Velocity	2013	510.29	\N
221	Kepler-31 b	36.7418	5.5	\N	20.8613	f	0	\N	781	\N	\N	\N	f	f	2026-05-09 16:35:49.126291+00	2026-05-09 16:35:49.126294+00	t	Kepler-31	Transit	2011	5429.32	\N
222	Kepler-32 f	969.228	0.82	\N	0.74296	f	0	\N	1026	\N	\N	\N	f	f	2026-05-09 16:35:49.126296+00	2026-05-09 16:35:49.126296+00	t	Kepler-32	Transit	2012	1056.25	\N
223	Kepler-58 d	245.343	2.94	\N	40.101371	f	0	\N	583	\N	\N	\N	f	f	2026-05-09 16:35:49.126298+00	2026-05-09 16:35:49.126299+00	t	Kepler-58	Transit	2014	3161.27	\N
224	Kepler-158 b	5.14	2.12	\N	16.709184	f	0	\N	500	\N	\N	\N	f	f	2026-05-09 16:35:49.1263+00	2026-05-09 16:35:49.126301+00	t	Kepler-158	Transit	2014	1027.97	\N
225	Kepler-424 c	2215.18	12.7	\N	223.3	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126302+00	2026-05-09 16:35:49.126303+00	t	Kepler-424	Radial Velocity	2014	2278.68	\N
226	KMT-2023-BLG-1896L b	16.35	4.19	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126304+00	2026-05-09 16:35:49.126305+00	t	KMT-2023-BLG-1896L	Microlensing	2025	17905.96	\N
227	HD 190984 b	1137.82569706	13	\N	4885	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126307+00	2026-05-09 16:35:49.126307+00	t	HD 190984	Radial Velocity	2009	483.32	\N
228	Kepler-134 c	2.13	1.26	\N	10.105785	f	0	\N	892	\N	\N	\N	f	f	2026-05-09 16:35:49.126309+00	2026-05-09 16:35:49.12631+00	t	Kepler-134	Transit	2014	1091.96	\N
229	Kepler-210 b	8.96	2.94	\N	2.453234	f	0	\N	737	\N	\N	\N	f	f	2026-05-09 16:35:49.126311+00	2026-05-09 16:35:49.126312+00	t	Kepler-210	Transit	2014	759.13	\N
230	Kepler-422 b	136.66	12.89	\N	7.8914483	f	0	\N	1028	\N	\N	\N	f	f	2026-05-09 16:35:49.126313+00	2026-05-09 16:35:49.126314+00	t	Kepler-422	Transit	2014	2357.44	\N
231	Kepler-426 b	108.06	12.22	\N	3.21751883	f	0	\N	1300	\N	\N	\N	f	f	2026-05-09 16:35:49.126315+00	2026-05-09 16:35:49.126316+00	t	Kepler-426	Transit	2014	2751.76	\N
232	Kepler-16 b	105.833	8.4493	\N	228.776	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126318+00	2026-05-09 16:35:49.126318+00	t	Kepler-16	Transit	2011	244.89	\N
233	KOI-94 d	106	11.27	\N	22.342989	f	0	\N	806	\N	\N	\N	f	f	2026-05-09 16:35:49.12632+00	2026-05-09 16:35:49.12632+00	t	KOI-94	Transit	2013	1555.93	\N
234	KOI-94 b	10.5	1.71	\N	3.743208	f	0	\N	1486	\N	\N	\N	f	f	2026-05-09 16:35:49.126322+00	2026-05-09 16:35:49.126323+00	t	KOI-94	Transit	2013	1555.93	\N
235	Kepler-35 b	40.363	8.16	\N	131.458	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126324+00	2026-05-09 16:35:49.126325+00	t	Kepler-35	Transit	2011	5933.33	\N
236	HD 103774 b	116	13.3	\N	5.8881	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126326+00	2026-05-09 16:35:49.126327+00	t	HD 103774	Radial Velocity	2013	183.98	\N
237	HD 109271 b	17.162	4.31	\N	7.8543	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126328+00	2026-05-09 16:35:49.126329+00	t	HD 109271	Radial Velocity	2013	182.23	\N
238	Kepler-415 c	4.7	2.01	\N	8.708	f	0	\N	543	\N	\N	\N	f	f	2026-05-09 16:35:49.126331+00	2026-05-09 16:35:49.126331+00	t	Kepler-415	Transit Timing Variations	2014	1730.22	\N
239	HD 50554 b	1859.29618095	12.8	\N	1293	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126333+00	2026-05-09 16:35:49.126333+00	t	HD 50554	Radial Velocity	2002	101.65	\N
240	Kepler-428 b	403.63	12.11	\N	3.52563254	f	0	\N	1070	\N	\N	\N	f	f	2026-05-09 16:35:49.126335+00	2026-05-09 16:35:49.126335+00	t	Kepler-428	Transit	2014	2238.36	\N
241	Kepler-425 b	79.45	10.962	\N	3.79701816	f	0	\N	1070	\N	\N	\N	f	f	2026-05-09 16:35:49.126337+00	2026-05-09 16:35:49.126338+00	t	Kepler-425	Transit	2014	2109.08	\N
242	WASP-70 A b	187.512	13.047	\N	3.7130203	f	0	\N	1387	\N	\N	\N	f	f	2026-05-09 16:35:49.126339+00	2026-05-09 16:35:49.12634+00	t	WASP-70 A	Transit	2014	725.22	\N
243	KOI-94 e	35	6.56	\N	54.32031	f	0	\N	584	\N	\N	\N	f	f	2026-05-09 16:35:49.126341+00	2026-05-09 16:35:49.126342+00	t	KOI-94	Transit	2013	1555.93	\N
244	Kepler-396 c	17.9	5.3	\N	88.505	f	0	\N	390	\N	\N	\N	f	f	2026-05-09 16:35:49.126343+00	2026-05-09 16:35:49.126344+00	t	Kepler-396	Transit	2013	729.8	\N
245	MOA-2010-BLG-477L b	480	13.6	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126345+00	2026-05-09 16:35:49.126346+00	t	MOA-2010-BLG-477L	Microlensing	2012	7501.59	\N
246	Kepler-290 c	7.75	2.7	\N	36.77031	f	0	\N	437	\N	\N	\N	f	f	2026-05-09 16:35:49.126348+00	2026-05-09 16:35:49.126348+00	t	Kepler-290	Transit	2014	2265.57	\N
247	Kepler-290 b	5.69	2.25	\N	14.589347	f	0	\N	594	\N	\N	\N	f	f	2026-05-09 16:35:49.12635+00	2026-05-09 16:35:49.126351+00	t	Kepler-290	Transit	2014	2265.57	\N
248	HD 166724 b	1207.7479466	13	\N	5144	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126352+00	2026-05-09 16:35:49.126353+00	t	HD 166724	Radial Velocity	2012	147.21	\N
249	Kepler-122 f	36	1.75	\N	56.268	f	0	\N	543	\N	\N	\N	f	f	2026-05-09 16:35:49.126354+00	2026-05-09 16:35:49.126355+00	t	Kepler-122	Transit Timing Variations	2014	3351.09	\N
250	Kepler-96 b	8.46	2.67	\N	16.2385	f	0	\N	711	\N	\N	\N	f	f	2026-05-09 16:35:49.126356+00	2026-05-09 16:35:49.126357+00	t	Kepler-96	Transit	2014	400.78	\N
251	KOI-13 b	2949.4624	16.948008	\N	1.763588	f	0	\N	2550	\N	\N	\N	f	f	2026-05-09 16:35:49.126359+00	2026-05-09 16:35:49.126359+00	t	KOI-13	Transit	2011	1693.06	\N
252	Kepler-17 b	778.65	14.68	\N	1.4857108	f	0	\N	1570	\N	\N	\N	f	f	2026-05-09 16:35:49.126361+00	2026-05-09 16:35:49.126362+00	t	Kepler-17	Transit	2011	2350.78	\N
253	Kepler-784 b	3.12	1.58	\N	31.5922646	f	0	\N	688	\N	\N	\N	f	f	2026-05-09 16:35:49.126363+00	2026-05-09 16:35:49.126364+00	t	Kepler-784	Transit	2016	4252.16	\N
254	Kepler-880 b	7.56	2.66	\N	7.71468975	f	0	\N	1622	\N	\N	\N	f	f	2026-05-09 16:35:49.126365+00	2026-05-09 16:35:49.126366+00	t	Kepler-880	Transit	2016	1961.25	\N
255	CoRoT-23 b	889.9	11.77	\N	3.6313	f	0	\N	1660	\N	\N	\N	f	f	2026-05-09 16:35:49.126367+00	2026-05-09 16:35:49.126368+00	t	CoRoT-23	Transit	2011	3460.42	\N
256	BD+20 274 b	1334.886	13	\N	578.2	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.12637+00	2026-05-09 16:35:49.12637+00	t	BD+20 274	Radial Velocity	2012	4313.45	\N
257	HD 219415 b	317.83	13.8	\N	2093.3	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126372+00	2026-05-09 16:35:49.126373+00	t	HD 219415	Radial Velocity	2012	538.76	\N
258	HD 150706 b	772.32302901	13.3	\N	5894	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126374+00	2026-05-09 16:35:49.126375+00	t	HD 150706	Radial Velocity	2012	92.2	\N
259	OGLE-2011-BLG-0251L b	170	14.2	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126376+00	2026-05-09 16:35:49.126377+00	t	OGLE-2011-BLG-0251L	Microlensing	2012	8382.21	\N
260	Kepler-414 c	29.9	3.01	\N	7.171	f	0	\N	890	\N	\N	\N	f	f	2026-05-09 16:35:49.126378+00	2026-05-09 16:35:49.126379+00	t	Kepler-414	Transit Timing Variations	2014	1348.52	\N
261	HAT-P-1 b	166.86075	14.784671	\N	4.46529976	f	0	\N	1322	\N	\N	\N	f	f	2026-05-09 16:35:49.12638+00	2026-05-09 16:35:49.126381+00	t	HAT-P-1	Transit	2006	518.52	\N
262	Kepler-42 c	60.337	0.73	\N	0.45328509	f	0	\N	720	\N	\N	\N	f	f	2026-05-09 16:35:49.126383+00	2026-05-09 16:35:49.126383+00	t	Kepler-42	Transit	2011	130.66	\N
263	Kepler-33 c	0.39	3.2	\N	13.17562	f	0	\N	1009	\N	\N	\N	f	f	2026-05-09 16:35:49.126385+00	2026-05-09 16:35:49.126386+00	t	Kepler-33	Transit	2011	3943.75	\N
264	Kepler-641 b	4.08	1.85	\N	9.48961571	f	0	\N	926	\N	\N	\N	f	f	2026-05-09 16:35:49.126389+00	2026-05-09 16:35:49.12639+00	t	Kepler-641	Transit	2016	3163.45	\N
265	Kepler-410 A b	8.44	2.838	\N	17.833648	f	0	\N	866	\N	\N	\N	f	f	2026-05-09 16:35:49.126392+00	2026-05-09 16:35:49.126392+00	t	Kepler-410 A	Transit	2013	481.17	\N
266	Kepler-314 c	8.75	2.9	\N	5.960392	f	0	\N	890	\N	\N	\N	f	f	2026-05-09 16:35:49.126394+00	2026-05-09 16:35:49.126394+00	t	Kepler-314	Transit	2014	876.97	\N
267	Kepler-879 b	7.13	2.57	\N	33.3855938	f	0	\N	580	\N	\N	\N	f	f	2026-05-09 16:35:49.126396+00	2026-05-09 16:35:49.126396+00	t	Kepler-879	Transit	2016	2617.96	\N
268	Kepler-865 b	6.76	2.49	\N	14.16399294	f	0	\N	694	\N	\N	\N	f	f	2026-05-09 16:35:49.126398+00	2026-05-09 16:35:49.126399+00	t	Kepler-865	Transit	2016	1911.72	\N
269	Kepler-415 b	119.9	1.21	\N	4.176	f	0	\N	694	\N	\N	\N	f	f	2026-05-09 16:35:49.1264+00	2026-05-09 16:35:49.126401+00	t	Kepler-415	Transit Timing Variations	2014	1730.22	\N
270	Kepler-338 e	8.5	1.56	\N	9.341	f	0	\N	1143	\N	\N	\N	f	f	2026-05-09 16:35:49.126402+00	2026-05-09 16:35:49.126403+00	t	Kepler-338	Transit Timing Variations	2014	1802.98	\N
271	Kepler-33 e	5.57	4.02	\N	31.7844	f	0	\N	752	\N	\N	\N	f	f	2026-05-09 16:35:49.126405+00	2026-05-09 16:35:49.126405+00	t	Kepler-33	Transit	2011	3943.75	\N
272	Kepler-33 b	3.68	1.74	\N	5.66793	f	0	\N	1336	\N	\N	\N	f	f	2026-05-09 16:35:49.126407+00	2026-05-09 16:35:49.126407+00	t	Kepler-33	Transit	2011	3943.75	\N
273	Kepler-46 c	119.499	13.5	\N	57.011	f	0	\N	455	\N	\N	\N	f	f	2026-05-09 16:35:49.126409+00	2026-05-09 16:35:49.12641+00	t	Kepler-46	Transit Timing Variations	2012	2534.43	\N
274	Kepler-318 b	19.9	4.71	\N	4.662715	f	0	\N	1039	\N	\N	\N	f	f	2026-05-09 16:35:49.126411+00	2026-05-09 16:35:49.126412+00	t	Kepler-318	Transit	2014	1595.36	\N
275	Kepler-314 b	0.498	0.83	\N	2.461069	f	0	\N	1195	\N	\N	\N	f	f	2026-05-09 16:35:49.126413+00	2026-05-09 16:35:49.126414+00	t	Kepler-314	Transit	2014	876.97	\N
276	Kepler-46 b	1907	9.057	\N	33.60134	f	0	\N	543	\N	\N	\N	f	f	2026-05-09 16:35:49.126416+00	2026-05-09 16:35:49.126416+00	t	Kepler-46	Transit	2012	2534.43	\N
277	USco CTIO 108 b	4449.62	12.3	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126418+00	2026-05-09 16:35:49.126418+00	t	USco CTIO 108	Imaging	2008	469.73	\N
278	Kepler-130 c	8.75	2.9	\N	27.50868	f	0	\N	683	\N	\N	\N	f	f	2026-05-09 16:35:49.12642+00	2026-05-09 16:35:49.126421+00	t	Kepler-130	Transit	2014	1032.82	\N
279	Kepler-418 b	349.6112477	13.45	\N	86.67856	f	0	\N	434	\N	\N	\N	f	f	2026-05-09 16:35:49.126422+00	2026-05-09 16:35:49.126423+00	t	Kepler-418	Transit	2014	3269.81	\N
280	Kepler-33 f	9.6	4.46	\N	41.02902	f	0	\N	691	\N	\N	\N	f	f	2026-05-09 16:35:49.126424+00	2026-05-09 16:35:49.126425+00	t	Kepler-33	Transit	2011	3943.75	\N
281	Kepler-33 d	3.91	5.35	\N	21.77596	f	0	\N	853	\N	\N	\N	f	f	2026-05-09 16:35:49.126426+00	2026-05-09 16:35:49.126427+00	t	Kepler-33	Transit	2011	3943.75	\N
282	HD 155358 c	261	13.9	\N	391.9	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126429+00	2026-05-09 16:35:49.126429+00	t	HD 155358	Radial Velocity	2007	142.27	\N
283	Kepler-52 b	135	2.1	\N	7.8773565	f	0	\N	553	\N	\N	\N	f	f	2026-05-09 16:35:49.126431+00	2026-05-09 16:35:49.126432+00	t	Kepler-52	Transit	2012	1048.73	\N
284	Kepler-603 c	34.5	6.5	\N	127.9075774	f	0	\N	401	\N	\N	\N	f	f	2026-05-09 16:35:49.126433+00	2026-05-09 16:35:49.126434+00	t	Kepler-603	Transit	2016	5021.6	\N
285	Kepler-952 b	45.4	7.65	\N	130.3546919	f	0	\N	369	\N	\N	\N	f	f	2026-05-09 16:35:49.126435+00	2026-05-09 16:35:49.126436+00	t	Kepler-952	Transit	2016	4253.89	\N
286	Kepler-347 c	3.71	1.75	\N	27.320871	f	0	\N	705	\N	\N	\N	f	f	2026-05-09 16:35:49.126437+00	2026-05-09 16:35:49.126438+00	t	Kepler-347	Transit	2014	4236.38	\N
287	Kepler-158 c	4.27	1.9	\N	28.551383	f	0	\N	418	\N	\N	\N	f	f	2026-05-09 16:35:49.126439+00	2026-05-09 16:35:49.12644+00	t	Kepler-158	Transit	2014	1027.97	\N
288	HAT-P-53 b	471.65972	14.773462	\N	1.9616241	f	0	\N	1778	\N	\N	\N	f	f	2026-05-09 16:35:49.126442+00	2026-05-09 16:35:49.126442+00	t	HAT-P-53	Transit	2015	2174.81	\N
289	HIP 74890 b	762.792	13.3	\N	822.3	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126444+00	2026-05-09 16:35:49.126444+00	t	HIP 74890	Radial Velocity	2016	256.54	\N
290	V0391 Peg b	1017.056	13.1	\N	1170	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126446+00	2026-05-09 16:35:49.126447+00	t	V0391 Peg	Pulsation Timing Variations	2007	3900.76	\N
291	HD 197037 b	251	13.9	\N	1035.7	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126448+00	2026-05-09 16:35:49.126449+00	t	HD 197037	Radial Velocity	2012	108.27	\N
292	CFBDSIR J145829+101343 b	3337.1	12.4	\N	10037.5	f	0	\N	370	\N	\N	\N	f	f	2026-05-09 16:35:49.12645+00	2026-05-09 16:35:49.126451+00	t	CFBDSIR J145829+101343	Imaging	2011	75.34	\N
293	Kepler-269 b	6.66	2.47	\N	5.326718	f	0	\N	1007	\N	\N	\N	f	f	2026-05-09 16:35:49.126452+00	2026-05-09 16:35:49.126453+00	t	Kepler-269	Transit	2014	7362.38	\N
294	Kepler-300 c	5.69	2.25	\N	40.714955	f	0	\N	516	\N	\N	\N	f	f	2026-05-09 16:35:49.126455+00	2026-05-09 16:35:49.126455+00	t	Kepler-300	Transit	2014	3582.66	\N
295	Kepler-149 d	14.9	3.96	\N	160.018032	f	0	\N	306	\N	\N	\N	f	f	2026-05-09 16:35:49.126457+00	2026-05-09 16:35:49.126458+00	t	Kepler-149	Transit	2014	1862.46	\N
296	Kepler-124 d	1.41	1.11	\N	30.950851	f	0	\N	428	\N	\N	\N	f	f	2026-05-09 16:35:49.126459+00	2026-05-09 16:35:49.12646+00	t	Kepler-124	Transit	2014	1370.01	\N
297	Kepler-276 d	16.3	2.8	\N	48.648	f	0	\N	489	\N	\N	\N	f	f	2026-05-09 16:35:49.126461+00	2026-05-09 16:35:49.126462+00	t	Kepler-276	Transit	2013	3734.03	\N
298	Kepler-114 c	2.8	1.6	\N	8.041	f	0	\N	507	\N	\N	\N	f	f	2026-05-09 16:35:49.126463+00	2026-05-09 16:35:49.126464+00	t	Kepler-114	Transit	2013	846.48	\N
299	XO-2 S c	435.409	13.6	\N	120.8	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126466+00	2026-05-09 16:35:49.126466+00	t	XO-2 S	Radial Velocity	2014	493.79	\N
300	Kepler-93 c	954	\N	\N	1460	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126468+00	2026-05-09 16:35:49.126468+00	t	Kepler-93	Radial Velocity	2014	312.82	\N
301	WASP-83 b	95.349	11.65736	\N	4.971252	f	0	\N	1120	\N	\N	\N	f	f	2026-05-09 16:35:49.12647+00	2026-05-09 16:35:49.126471+00	t	WASP-83	Transit	2015	884.22	\N
302	WASP-89 b	1875.197	11.65736	\N	3.3564227	f	0	\N	1120	\N	\N	\N	f	f	2026-05-09 16:35:49.126472+00	2026-05-09 16:35:49.126473+00	t	WASP-89	Transit	2015	948.94	\N
303	Kepler-402 c	3.05	1.56	\N	6.124821	f	0	\N	1140	\N	\N	\N	f	f	2026-05-09 16:35:49.126474+00	2026-05-09 16:35:49.126475+00	t	Kepler-402	Transit	2014	2039.58	\N
304	Kepler-157 b	2.3	1.32	\N	1.732342	f	0	\N	1546	\N	\N	\N	f	f	2026-05-09 16:35:49.126476+00	2026-05-09 16:35:49.126477+00	t	Kepler-157	Transit	2014	2523.51	\N
305	HATS-6 b	101.38777	11.186582	\N	3.3252725	f	0	\N	712.8	\N	\N	\N	f	f	2026-05-09 16:35:49.126478+00	2026-05-09 16:35:49.126479+00	t	HATS-6	Transit	2015	552.24	\N
306	Kepler-450 c	12.5	2.62	\N	15.413135	f	0	\N	944	\N	\N	\N	f	f	2026-05-09 16:35:49.126481+00	2026-05-09 16:35:49.126481+00	t	Kepler-450	Transit	2015	1487.21	\N
307	Kepler-81 c	4.3	2.37	\N	12.04	f	0	\N	502	\N	\N	\N	f	f	2026-05-09 16:35:49.126485+00	2026-05-09 16:35:49.126486+00	t	Kepler-81	Transit	2012	1135.97	\N
308	Kepler-412 b	299.07803	15.031269	\N	1.7208604	f	0	\N	1850	\N	\N	\N	f	f	2026-05-09 16:35:49.126488+00	2026-05-09 16:35:49.126488+00	t	Kepler-412	Transit	2014	3542.84	\N
309	Kepler-92 b	64.3	3.51	\N	13.749	f	0	\N	975	\N	\N	\N	f	f	2026-05-09 16:35:49.12649+00	2026-05-09 16:35:49.12649+00	t	Kepler-92	Transit	2013	1559	\N
310	Kepler-288 c	8.5	2.85	\N	19.305772	f	0	\N	815	\N	\N	\N	f	f	2026-05-09 16:35:49.126492+00	2026-05-09 16:35:49.126493+00	t	Kepler-288	Transit	2014	3894.79	\N
311	Kepler-295 b	1.98	1.22	\N	12.645164	f	0	\N	741	\N	\N	\N	f	f	2026-05-09 16:35:49.126494+00	2026-05-09 16:35:49.126495+00	t	Kepler-295	Transit	2014	5542.01	\N
312	Kepler-178 d	14.8	3.95	\N	96.678988	f	0	\N	392	\N	\N	\N	f	f	2026-05-09 16:35:49.126496+00	2026-05-09 16:35:49.126497+00	t	Kepler-178	Transit	2014	2335.36	\N
313	Kepler-44 b	317.82	12.22	\N	3.2467293	f	0	\N	1544	\N	\N	\N	f	f	2026-05-09 16:35:49.126498+00	2026-05-09 16:35:49.126499+00	t	Kepler-44	Transit	2011	3874.73	\N
314	Kepler-41 b	177.98	14.46	\N	1.8555582	f	0	\N	1790	\N	\N	\N	f	f	2026-05-09 16:35:49.126501+00	2026-05-09 16:35:49.126501+00	t	Kepler-41	Transit	2011	3565.15	\N
315	Kepler-450 d	17.6	0.837	\N	7.51464	f	0	\N	1199	\N	\N	\N	f	f	2026-05-09 16:35:49.126503+00	2026-05-09 16:35:49.126504+00	t	Kepler-450	Transit	2015	1487.21	\N
316	POTS-1 b	734.16	10.548	\N	3.1606296	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126505+00	2026-05-09 16:35:49.126506+00	t	POTS-1	Transit	2013	2439.51	\N
317	Kepler-350 d	14.9	2.8	\N	26.136	f	0	\N	782	\N	\N	\N	f	f	2026-05-09 16:35:49.126507+00	2026-05-09 16:35:49.126508+00	t	Kepler-350	Transit	2013	3120.85	\N
318	Kepler-238 f	13.5	2	\N	50.447	f	0	\N	568	\N	\N	\N	f	f	2026-05-09 16:35:49.126509+00	2026-05-09 16:35:49.12651+00	t	Kepler-238	Transit	2013	5866.73	\N
319	Kepler-287 c	66	3.26	\N	44.851896	f	0	\N	513	\N	\N	\N	f	f	2026-05-09 16:35:49.126512+00	2026-05-09 16:35:49.126512+00	t	Kepler-287	Transit	2014	2726.21	\N
320	Kepler-285 b	2.36	1.34	\N	2.633867	f	0	\N	1131	\N	\N	\N	f	f	2026-05-09 16:35:49.126514+00	2026-05-09 16:35:49.126514+00	t	Kepler-285	Transit	2014	2688.54	\N
321	Kepler-181 b	2.15	1.27	\N	3.137873	f	0	\N	1041	\N	\N	\N	f	f	2026-05-09 16:35:49.126516+00	2026-05-09 16:35:49.126517+00	t	Kepler-181	Transit	2014	1987.21	\N
322	Kepler-1398 c	1.08	1.03	\N	4.13827595	f	0	\N	1324	\N	\N	\N	f	f	2026-05-09 16:35:49.126518+00	2026-05-09 16:35:49.126519+00	t	Kepler-1398	Transit	2016	2779.51	\N
323	Kepler-963 b	7.56	2.66	\N	9.97683705	f	0	\N	802	\N	\N	\N	f	f	2026-05-09 16:35:49.12652+00	2026-05-09 16:35:49.126521+00	t	Kepler-963	Transit	2016	2516.27	\N
324	WASP-24 b	394.1092	15.46842	\N	2.34121	f	0	\N	1772	\N	\N	\N	f	f	2026-05-09 16:35:49.126522+00	2026-05-09 16:35:49.126523+00	t	WASP-24	Transit	2010	1050.59	\N
325	WASP-21 b	95.345	11.99	\N	4.322482	f	0	\N	1333	\N	\N	\N	f	f	2026-05-09 16:35:49.126525+00	2026-05-09 16:35:49.126525+00	t	WASP-21	Transit	2010	842.87	\N
326	TOI-237 b	2.67	1.44	\N	5.436098	f	0	\N	388	\N	\N	\N	f	f	2026-05-09 16:35:49.126527+00	2026-05-09 16:35:49.126528+00	t	TOI-237	Transit	2020	124.18	\N
327	K2-237 b	434.15360396	16.06246934	\N	2.18053332	f	0	\N	1759	\N	\N	\N	f	f	2026-05-09 16:35:49.126529+00	2026-05-09 16:35:49.12653+00	t	K2-237	Transit	2018	1027.38	\N
328	Kepler-284 b	5.65	2.24	\N	12.699149	f	0	\N	686	\N	\N	\N	f	f	2026-05-09 16:35:49.126531+00	2026-05-09 16:35:49.126532+00	t	Kepler-284	Transit	2014	3365.77	\N
329	Kepler-654 b	4.94	2.07	\N	13.72465129	f	0	\N	831	\N	\N	\N	f	f	2026-05-09 16:35:49.126533+00	2026-05-09 16:35:49.126534+00	t	Kepler-654	Transit	2016	3177.16	\N
330	Kepler-199 c	10.6	3.25	\N	67.093408	f	0	\N	420	\N	\N	\N	f	f	2026-05-09 16:35:49.126536+00	2026-05-09 16:35:49.126536+00	t	Kepler-199	Transit	2014	1699.45	\N
331	Kepler-214 b	7.32	2.61	\N	15.660544	f	0	\N	758	\N	\N	\N	f	f	2026-05-09 16:35:49.126538+00	2026-05-09 16:35:49.126538+00	t	Kepler-214	Transit	2014	3941.4	\N
332	Kepler-87 b	324.2	13.49	\N	114.73635	f	0	\N	478	\N	\N	\N	f	f	2026-05-09 16:35:49.12654+00	2026-05-09 16:35:49.126541+00	t	Kepler-87	Transit	2013	4021.18	\N
333	Kepler-75 b	3209.9	11.77	\N	8.8849116	f	0	\N	767	\N	\N	\N	f	f	2026-05-09 16:35:49.126542+00	2026-05-09 16:35:49.126543+00	t	Kepler-75	Transit	2013	2724.56	\N
334	Kepler-74 b	200.22	10.76	\N	7.340711	f	0	\N	1078	\N	\N	\N	f	f	2026-05-09 16:35:49.126544+00	2026-05-09 16:35:49.126545+00	t	Kepler-74	Transit	2013	3840.65	\N
335	Kepler-145 c	79.4	4.32	\N	42.882	f	0	\N	709	\N	\N	\N	f	f	2026-05-09 16:35:49.126546+00	2026-05-09 16:35:49.126547+00	t	Kepler-145	Transit	2013	1848.82	\N
336	Kepler-328 b	28.5	2.3	\N	34.921	f	0	\N	602	\N	\N	\N	f	f	2026-05-09 16:35:49.126548+00	2026-05-09 16:35:49.126549+00	t	Kepler-328	Transit	2013	7218.45	\N
337	Kepler-115 c	7.27	2.6	\N	8.990889	f	0	\N	960	\N	\N	\N	f	f	2026-05-09 16:35:49.126551+00	2026-05-09 16:35:49.126551+00	t	Kepler-115	Transit	2014	2033.94	\N
338	Kepler-341 c	3.53	1.7	\N	8.01041	f	0	\N	940	\N	\N	\N	f	f	2026-05-09 16:35:49.126553+00	2026-05-09 16:35:49.126554+00	t	Kepler-341	Transit	2014	3414.95	\N
339	Kepler-225 b	1.87	1.2	\N	6.738975	f	0	\N	579	\N	\N	\N	f	f	2026-05-09 16:35:49.126555+00	2026-05-09 16:35:49.126556+00	t	Kepler-225	Transit	2014	1830.06	\N
340	Kepler-871 b	13.5	3.74	\N	22.0459018	f	0	\N	640	\N	\N	\N	f	f	2026-05-09 16:35:49.126557+00	2026-05-09 16:35:49.126558+00	t	Kepler-871	Transit	2016	6445.01	\N
341	Kepler-56 c	181	9.8	\N	21.40239	f	0	\N	1087	\N	\N	\N	f	f	2026-05-09 16:35:49.126559+00	2026-05-09 16:35:49.12656+00	t	Kepler-56	Transit	2012	2977.78	\N
342	XO-5 b	378.2	12.78	\N	4.1877558	f	0	\N	1230	\N	\N	\N	f	f	2026-05-09 16:35:49.126562+00	2026-05-09 16:35:49.126562+00	t	XO-5	Transit	2008	900.88	\N
343	Kepler-447 b	435.41	18.49	\N	7.79430132	f	0	\N	882	\N	\N	\N	f	f	2026-05-09 16:35:49.126564+00	2026-05-09 16:35:49.126564+00	t	Kepler-447	Transit	2015	874.23	\N
344	Kepler-216 b	6.12	2.35	\N	7.693641	f	0	\N	1069	\N	\N	\N	f	f	2026-05-09 16:35:49.126566+00	2026-05-09 16:35:49.126567+00	t	Kepler-216	Transit	2014	3873	\N
345	Kepler-259 c	7.75	2.7	\N	36.924931	f	0	\N	530	\N	\N	\N	f	f	2026-05-09 16:35:49.126568+00	2026-05-09 16:35:49.126569+00	t	Kepler-259	Transit	2014	3268.54	\N
346	Kepler-293 b	9.64	3.07	\N	19.254196	f	0	\N	657	\N	\N	\N	f	f	2026-05-09 16:35:49.12657+00	2026-05-09 16:35:49.126571+00	t	Kepler-293	Transit	2014	3178.82	\N
347	Kepler-291 b	5.31	2.16	\N	3.546511	f	0	\N	1212	\N	\N	\N	f	f	2026-05-09 16:35:49.126572+00	2026-05-09 16:35:49.126573+00	t	Kepler-291	Transit	2014	5826.71	\N
348	Kepler-242 c	4.66	2	\N	14.496481	f	0	\N	613	\N	\N	\N	f	f	2026-05-09 16:35:49.126574+00	2026-05-09 16:35:49.126575+00	t	Kepler-242	Transit	2014	1957.72	\N
349	Kepler-240 b	2.45	1.37	\N	4.144495	f	0	\N	864	\N	\N	\N	f	f	2026-05-09 16:35:49.126579+00	2026-05-09 16:35:49.12658+00	t	Kepler-240	Transit	2014	2436.15	\N
350	Kepler-56 b	22.1	6.51	\N	10.5016	f	0	\N	1378	\N	\N	\N	f	f	2026-05-09 16:35:49.126581+00	2026-05-09 16:35:49.126582+00	t	Kepler-56	Transit	2012	2977.78	\N
351	WASP-16 b	394.1092	13.67498	\N	3.1186	f	0	\N	1389	\N	\N	\N	f	f	2026-05-09 16:35:49.126583+00	2026-05-09 16:35:49.126584+00	t	WASP-16	Transit	2009	633.18	\N
352	WASP-17 b	247.9074	20.96083	\N	3.73543	f	0	\N	1755	\N	\N	\N	f	f	2026-05-09 16:35:49.126586+00	2026-05-09 16:35:49.126586+00	t	WASP-17	Transit	2009	1323.89	\N
353	WASP-18 b	3241.8497514	13.89913607	\N	0.94145223	f	0	\N	2429	\N	\N	\N	f	f	2026-05-09 16:35:49.126588+00	2026-05-09 16:35:49.126588+00	t	WASP-18	Transit	2009	402.75	\N
354	HAT-P-54 b	241.5508	10.581296	\N	3.799847	f	0	\N	818	\N	\N	\N	f	f	2026-05-09 16:35:49.12659+00	2026-05-09 16:35:49.126591+00	t	HAT-P-54	Transit	2015	468.53	\N
355	Kepler-148 c	12.6	3.6	\N	4.180043	f	0	\N	957	\N	\N	\N	f	f	2026-05-09 16:35:49.126592+00	2026-05-09 16:35:49.126593+00	t	Kepler-148	Transit	2014	2580.43	\N
356	Kepler-179 b	3.33	1.64	\N	2.735926	f	0	\N	1075	\N	\N	\N	f	f	2026-05-09 16:35:49.126594+00	2026-05-09 16:35:49.126595+00	t	Kepler-179	Transit	2014	1975.46	\N
357	Kepler-303 b	0.64	0.89	\N	1.937055	f	0	\N	802	\N	\N	\N	f	f	2026-05-09 16:35:49.126596+00	2026-05-09 16:35:49.126597+00	t	Kepler-303	Transit	2014	684.07	\N
358	Kepler-260 b	4.7	2.01	\N	8.187399	f	0	\N	782	\N	\N	\N	f	f	2026-05-09 16:35:49.126599+00	2026-05-09 16:35:49.126599+00	t	Kepler-260	Transit	2014	2046.19	\N
359	Kepler-226 b	24	1.55	\N	3.940997	f	0	\N	1018	\N	\N	\N	f	f	2026-05-09 16:35:49.126601+00	2026-05-09 16:35:49.126601+00	t	Kepler-226	Transit	2014	3196.78	\N
360	WASP-26 b	270.1555	13.56289	\N	2.7566	f	0	\N	1650	\N	\N	\N	f	f	2026-05-09 16:35:49.126603+00	2026-05-09 16:35:49.126603+00	t	WASP-26	Transit	2010	824.39	\N
361	WASP-33 b	665.21819	17.855937	\N	1.21987	f	0	\N	2781.7	\N	\N	\N	f	f	2026-05-09 16:35:49.126605+00	2026-05-09 16:35:49.126606+00	t	WASP-33	Transit	2010	397.73	\N
362	HATS-14 b	340.39593	11.646151	\N	2.7667641	f	0	\N	1276	\N	\N	\N	f	f	2026-05-09 16:35:49.126607+00	2026-05-09 16:35:49.126608+00	t	HATS-14	Transit	2015	1673.22	\N
363	Kepler-1162 b	5.52	2.21	\N	32.5637069	f	0	\N	490	\N	\N	\N	f	f	2026-05-09 16:35:49.126609+00	2026-05-09 16:35:49.12661+00	t	Kepler-1162	Transit	2016	3066.55	\N
364	Kepler-1126 b	3.64	1.73	\N	108.593329	f	0	\N	374	\N	\N	\N	f	f	2026-05-09 16:35:49.126611+00	2026-05-09 16:35:49.126612+00	t	Kepler-1126	Transit	2016	2073.49	\N
365	Kepler-165 c	5.6	2.23	\N	15.31299	f	0	\N	581	\N	\N	\N	f	f	2026-05-09 16:35:49.126614+00	2026-05-09 16:35:49.126614+00	t	Kepler-165	Transit	2014	1829.36	\N
366	Kepler-197 d	1.98	1.22	\N	15.677563	f	0	\N	810	\N	\N	\N	f	f	2026-05-09 16:35:49.126616+00	2026-05-09 16:35:49.126616+00	t	Kepler-197	Transit	2014	1078.19	\N
367	Kepler-125 b	6.21	2.37	\N	4.164389	f	0	\N	590	\N	\N	\N	f	f	2026-05-09 16:35:49.126618+00	2026-05-09 16:35:49.126619+00	t	Kepler-125	Transit	2014	598.06	\N
368	Kepler-306 c	6.12	2.35	\N	7.240193	f	0	\N	716	\N	\N	\N	f	f	2026-05-09 16:35:49.12662+00	2026-05-09 16:35:49.126621+00	t	Kepler-306	Transit	2014	2529.92	\N
369	KOI-351 e	7.56	2.66	\N	91.93913	f	0	\N	450	\N	\N	\N	f	f	2026-05-09 16:35:49.126622+00	2026-05-09 16:35:49.126623+00	t	KOI-351	Transit	2013	2766.63	\N
370	KOI-351 c	1.81	1.19	\N	8.719375	f	0	\N	987	\N	\N	\N	f	f	2026-05-09 16:35:49.126624+00	2026-05-09 16:35:49.126625+00	t	KOI-351	Transit	2013	2766.63	\N
371	Kepler-222 c	19.4	4.64	\N	10.08881	f	0	\N	734	\N	\N	\N	f	f	2026-05-09 16:35:49.126627+00	2026-05-09 16:35:49.126627+00	t	Kepler-222	Transit	2014	2475.05	\N
372	Kepler-184 d	6.76	2.49	\N	29.022358	f	0	\N	559	\N	\N	\N	f	f	2026-05-09 16:35:49.126629+00	2026-05-09 16:35:49.126629+00	t	Kepler-184	Transit	2014	1990.61	\N
373	Kepler-309 b	3.05	1.56	\N	5.923653	f	0	\N	531	\N	\N	\N	f	f	2026-05-09 16:35:49.126631+00	2026-05-09 16:35:49.126631+00	t	Kepler-309	Transit	2014	1776.14	\N
374	Kepler-696 b	31.3	6.14	\N	4.190425575	f	0	\N	1234	\N	\N	\N	f	f	2026-05-09 16:35:49.126633+00	2026-05-09 16:35:49.126634+00	t	Kepler-696	Transit	2016	4619.8	\N
375	Kepler-11 f	2	2.49	\N	46.6888	f	0	\N	513	\N	\N	\N	f	f	2026-05-09 16:35:49.126635+00	2026-05-09 16:35:49.126636+00	t	Kepler-11	Transit	2010	2108.1	\N
376	Kepler-11 e	8	4.19	\N	31.9996	f	0	\N	582	\N	\N	\N	f	f	2026-05-09 16:35:49.126637+00	2026-05-09 16:35:49.126638+00	t	Kepler-11	Transit	2010	2108.1	\N
377	Kepler-11 g	25	3.33	\N	118.3807	f	0	\N	376	\N	\N	\N	f	f	2026-05-09 16:35:49.12664+00	2026-05-09 16:35:49.12664+00	t	Kepler-11	Transit	2010	2108.1	\N
378	Kepler-166 c	6.26	2.38	\N	34.260281	f	0	\N	468	\N	\N	\N	f	f	2026-05-09 16:35:49.126642+00	2026-05-09 16:35:49.126643+00	t	Kepler-166	Transit	2014	1968.45	\N
379	Kepler-275 b	6.08	2.34	\N	10.300682	f	0	\N	1015	\N	\N	\N	f	f	2026-05-09 16:35:49.126644+00	2026-05-09 16:35:49.126645+00	t	Kepler-275	Transit	2014	6634.83	\N
380	Kepler-1298 b	2.27	1.31	\N	7.12811928	f	0	\N	1373	\N	\N	\N	f	f	2026-05-09 16:35:49.126646+00	2026-05-09 16:35:49.126647+00	t	Kepler-1298	Transit	2016	1774.82	\N
381	Kepler-11 c	2.9	2.87	\N	13.0241	f	0	\N	786	\N	\N	\N	f	f	2026-05-09 16:35:49.126649+00	2026-05-09 16:35:49.126649+00	t	Kepler-11	Transit	2010	2108.1	\N
382	WASP-57 b	204.68252	11.76945	\N	2.83891856	f	0	\N	1338	\N	\N	\N	f	f	2026-05-09 16:35:49.126651+00	2026-05-09 16:35:49.126651+00	t	WASP-57	Transit	2012	1299	\N
383	HAT-P-50 b	429.0705	14.437192	\N	3.1220109	f	0	\N	1862	\N	\N	\N	f	f	2026-05-09 16:35:49.126653+00	2026-05-09 16:35:49.126654+00	t	HAT-P-50	Transit	2015	1681.2	\N
384	MOA-2008-BLG-379L b	1300	13	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126655+00	2026-05-09 16:35:49.126656+00	t	MOA-2008-BLG-379L	Microlensing	2013	10763.15	\N
385	HD 13908 b	274.91	13.9	\N	19.382	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126658+00	2026-05-09 16:35:49.126658+00	t	HD 13908	Radial Velocity	2013	259.46	\N
386	Kepler-108 b	56	8.65	\N	49.183921	f	0	\N	669	\N	\N	\N	f	f	2026-05-09 16:35:49.12666+00	2026-05-09 16:35:49.12666+00	t	Kepler-108	Transit	2014	1104.79	\N
387	Kepler-264 b	11.1	3.33	\N	40.806231	f	0	\N	772	\N	\N	\N	f	f	2026-05-09 16:35:49.126662+00	2026-05-09 16:35:49.126663+00	t	Kepler-264	Transit	2014	3072.95	\N
388	Kepler-279 b	4180.93	3.62	\N	12.309681	f	0	\N	1104	\N	\N	\N	f	f	2026-05-09 16:35:49.126664+00	2026-05-09 16:35:49.126665+00	t	Kepler-279	Transit	2014	3383.54	\N
389	Kepler-286 c	2.45	1.37	\N	3.468095	f	0	\N	1098	\N	\N	\N	f	f	2026-05-09 16:35:49.126666+00	2026-05-09 16:35:49.126667+00	t	Kepler-286	Transit	2014	4001.44	\N
390	GJ 667 C c	3.8	1.77	\N	28.14	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126668+00	2026-05-09 16:35:49.126669+00	t	GJ 667 C	Radial Velocity	2013	23.63	\N
391	HD 13908 c	1630.4	12.8	\N	931	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.12667+00	2026-05-09 16:35:49.126674+00	t	HD 13908	Radial Velocity	2013	259.46	\N
392	HD 159243 b	359.13	13.7	\N	12.62	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126675+00	2026-05-09 16:35:49.126676+00	t	HD 159243	Radial Velocity	2013	239.09	\N
393	Kepler-261 b	5.39	2.18	\N	10.381227	f	0	\N	672	\N	\N	\N	f	f	2026-05-09 16:35:49.126677+00	2026-05-09 16:35:49.126678+00	t	Kepler-261	Transit	2014	1035.54	\N
394	HIP 57274 c	130	14.2	\N	32.03	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126679+00	2026-05-09 16:35:49.12668+00	t	HIP 57274	Radial Velocity	2011	84.35	\N
395	Kepler-292 d	5.6	2.23	\N	7.055679	f	0	\N	808	\N	\N	\N	f	f	2026-05-09 16:35:49.126681+00	2026-05-09 16:35:49.126682+00	t	Kepler-292	Transit	2014	3445.77	\N
396	GJ 667 C f	2.7	1.45	\N	39.026	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126684+00	2026-05-09 16:35:49.126684+00	t	GJ 667 C	Radial Velocity	2013	23.63	\N
397	HD 73526 c	715.09	13.3	\N	379.1	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126686+00	2026-05-09 16:35:49.126686+00	t	HD 73526	Radial Velocity	2005	317.15	\N
398	HD 106906 b	3496	12.4	\N	\N	f	0	\N	1800	\N	\N	\N	f	f	2026-05-09 16:35:49.126688+00	2026-05-09 16:35:49.126688+00	t	HD 106906	Imaging	2013	336.04	\N
399	Kepler-119 b	12.6	3.6	\N	2.422082	f	0	\N	1213	\N	\N	\N	f	f	2026-05-09 16:35:49.12669+00	2026-05-09 16:35:49.126691+00	t	Kepler-119	Transit	2014	2289.6	\N
400	HD 220074 b	5288.6912	12.2	\N	672.09998	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126692+00	2026-05-09 16:35:49.126693+00	t	HD 220074	Radial Velocity	2012	1058.51	\N
401	Kepler-343 b	6.39	2.41	\N	8.96855	f	0	\N	1024	\N	\N	\N	f	f	2026-05-09 16:35:49.126694+00	2026-05-09 16:35:49.126695+00	t	Kepler-343	Transit	2014	3024.1	\N
402	Kepler-282 d	61	2.46	\N	24.806	f	0	\N	588	\N	\N	\N	f	f	2026-05-09 16:35:49.126696+00	2026-05-09 16:35:49.126697+00	t	Kepler-282	Transit	2013	4362.7	\N
403	Kepler-619 b	10.1	3.16	\N	5.404272197	f	0	\N	1073	\N	\N	\N	f	f	2026-05-09 16:35:49.126699+00	2026-05-09 16:35:49.126699+00	t	Kepler-619	Transit	2016	2937.62	\N
404	Kepler-656 b	9.91	3.12	\N	1.260259094	f	0	\N	1569	\N	\N	\N	f	f	2026-05-09 16:35:49.126701+00	2026-05-09 16:35:49.126701+00	t	Kepler-656	Transit	2016	2903.94	\N
405	Kepler-273 b	2.86	1.5	\N	2.936532	f	0	\N	1209	\N	\N	\N	f	f	2026-05-09 16:35:49.126703+00	2026-05-09 16:35:49.126704+00	t	Kepler-273	Transit	2014	2328.64	\N
406	Kepler-677 b	25	5.38	\N	6.57531678	f	0	\N	1015	\N	\N	\N	f	f	2026-05-09 16:35:49.126705+00	2026-05-09 16:35:49.126706+00	t	Kepler-677	Transit	2016	6373.35	\N
407	Kepler-306 b	2.92	1.52	\N	4.646186	f	0	\N	830	\N	\N	\N	f	f	2026-05-09 16:35:49.126707+00	2026-05-09 16:35:49.126708+00	t	Kepler-306	Transit	2014	2529.92	\N
408	Kepler-267 d	5.77	2.27	\N	28.464515	f	0	\N	301	\N	\N	\N	f	f	2026-05-09 16:35:49.126709+00	2026-05-09 16:35:49.12671+00	t	Kepler-267	Transit	2014	864.29	\N
409	DP Leo b	1995.88832	12.7	\N	10220	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126711+00	2026-05-09 16:35:49.126712+00	t	DP Leo	Eclipse Timing Variations	2009	997.01	\N
410	Kepler-20 g	19.96	4.71	\N	34.94	f	0	\N	524	\N	\N	\N	f	f	2026-05-09 16:35:49.126714+00	2026-05-09 16:35:49.126714+00	t	Kepler-20	Radial Velocity	2016	921.6	\N
411	Kepler-19 c	13.1	3.68	\N	28.731	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126716+00	2026-05-09 16:35:49.126716+00	t	Kepler-19	Transit Timing Variations	2011	712.85	\N
412	HAT-P-34 b	1058.3739	13.417173	\N	5.452654	f	0	\N	1520	\N	\N	\N	f	f	2026-05-09 16:35:49.126718+00	2026-05-09 16:35:49.126719+00	t	HAT-P-34	Transit	2011	813.19	\N
413	Kepler-549 c	8.91	2.93	\N	117.040498	f	0	\N	349	\N	\N	\N	f	f	2026-05-09 16:35:49.12672+00	2026-05-09 16:35:49.126721+00	t	Kepler-549	Transit	2016	2071.56	\N
414	Kepler-603 d	2.3	1.32	\N	6.2171292	f	0	\N	1098	\N	\N	\N	f	f	2026-05-09 16:35:49.126722+00	2026-05-09 16:35:49.126723+00	t	Kepler-603	Transit	2016	5021.6	\N
415	WASP-37 b	572.07	13.002	\N	3.577469	f	0	\N	1232.5	\N	\N	\N	f	f	2026-05-09 16:35:49.126724+00	2026-05-09 16:35:49.126725+00	t	WASP-37	Transit	2010	1281.11	\N
416	WASP-90 b	200.2329	18.27067	\N	3.916243	f	0	\N	1840	\N	\N	\N	f	f	2026-05-09 16:35:49.126726+00	2026-05-09 16:35:49.126727+00	t	WASP-90	Transit	2016	1521.3	\N
417	K2-26 b	7.61	2.67	\N	14.5665	f	0	\N	430	\N	\N	\N	f	f	2026-05-09 16:35:49.126729+00	2026-05-09 16:35:49.126729+00	t	K2-26	Transit	2016	323.06	\N
418	Kepler-276 c	16.6	2.9	\N	31.884	f	0	\N	563	\N	\N	\N	f	f	2026-05-09 16:35:49.126731+00	2026-05-09 16:35:49.126731+00	t	Kepler-276	Transit	2013	3734.03	\N
419	Kepler-305 b	10.5	3.6	\N	5.487	f	0	\N	836	\N	\N	\N	f	f	2026-05-09 16:35:49.126733+00	2026-05-09 16:35:49.126734+00	t	Kepler-305	Transit	2013	2832.59	\N
420	Kepler-266 b	6.71	2.48	\N	6.61833	f	0	\N	1066	\N	\N	\N	f	f	2026-05-09 16:35:49.126735+00	2026-05-09 16:35:49.126736+00	t	Kepler-266	Transit	2014	4470.91	\N
421	Kepler-121 c	5.77	2.27	\N	41.008011	f	0	\N	425	\N	\N	\N	f	f	2026-05-09 16:35:49.126737+00	2026-05-09 16:35:49.126738+00	t	Kepler-121	Transit	2014	1665.1	\N
422	Kepler-338 d	9.27	3	\N	44.431014	f	0	\N	680	\N	\N	\N	f	f	2026-05-09 16:35:49.126739+00	2026-05-09 16:35:49.12674+00	t	Kepler-338	Transit	2014	1802.98	\N
423	2MASS J01225093-2439505 b	7786.5	11.209	\N	\N	f	0	\N	1600	\N	\N	\N	f	f	2026-05-09 16:35:49.126741+00	2026-05-09 16:35:49.126742+00	t	2MASS J01225093-2439505	Imaging	2013	110.33	\N
424	WASP-52 b	146.2	14.24	\N	1.7497798	f	0	\N	1315	\N	\N	\N	f	f	2026-05-09 16:35:49.126744+00	2026-05-09 16:35:49.126744+00	t	WASP-52	Transit	2012	570.18	\N
425	WASP-75 b	340.06	14.235	\N	2.484193	f	0	\N	1710	\N	\N	\N	f	f	2026-05-09 16:35:49.126746+00	2026-05-09 16:35:49.126754+00	t	WASP-75	Transit	2013	958.9	\N
426	WASP-135 b	603.877	14.5717	\N	1.4013794	f	0	\N	1403.66	\N	\N	\N	f	f	2026-05-09 16:35:49.126756+00	2026-05-09 16:35:49.126757+00	t	WASP-135	Transit	2015	972.64	\N
427	HD 20794 e	4.77	2.03	\N	147.02	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126758+00	2026-05-09 16:35:49.126759+00	t	HD 20794	Radial Velocity	2017	19.58	\N
428	HD 27894 c	51.48846	8.24	\N	36.07	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.12676+00	2026-05-09 16:35:49.126761+00	t	HD 27894	Radial Velocity	2017	142.93	\N
429	Kepler-126 d	54.59018723	2.5	\N	100.283134	f	0	\N	475	\N	\N	\N	f	f	2026-05-09 16:35:49.126762+00	2026-05-09 16:35:49.126763+00	t	Kepler-126	Transit	2014	774.3	\N
430	Kepler-381 c	1.46	1.12	\N	13.391635	f	0	\N	1180	\N	\N	\N	f	f	2026-05-09 16:35:49.126765+00	2026-05-09 16:35:49.126765+00	t	Kepler-381	Transit	2014	871.89	\N
431	Kepler-249 d	3.09	1.57	\N	15.368459	f	0	\N	332	\N	\N	\N	f	f	2026-05-09 16:35:49.126767+00	2026-05-09 16:35:49.126767+00	t	Kepler-249	Transit	2014	621	\N
432	Kepler-254 d	6.8	2.5	\N	18.746477	f	0	\N	686	\N	\N	\N	f	f	2026-05-09 16:35:49.126769+00	2026-05-09 16:35:49.12677+00	t	Kepler-254	Transit	2014	4531.87	\N
433	Kepler-619 c	3.5	1.69	\N	1.208465026	f	0	\N	1767	\N	\N	\N	f	f	2026-05-09 16:35:49.126771+00	2026-05-09 16:35:49.126772+00	t	Kepler-619	Transit	2016	2937.62	\N
434	Kepler-1610 b	3.22	1.61	\N	8.70181574	f	0	\N	750	\N	\N	\N	f	f	2026-05-09 16:35:49.126776+00	2026-05-09 16:35:49.126777+00	t	Kepler-1610	Transit	2016	2819.07	\N
435	Kepler-363 d	4.86	2.05	\N	11.932125	f	0	\N	905	\N	\N	\N	f	f	2026-05-09 16:35:49.126778+00	2026-05-09 16:35:49.126779+00	t	Kepler-363	Transit	2014	2487.25	\N
436	Kepler-366 b	2.73	1.46	\N	3.281959	f	0	\N	1326	\N	\N	\N	f	f	2026-05-09 16:35:49.12678+00	2026-05-09 16:35:49.126781+00	t	Kepler-366	Transit	2014	6054.37	\N
437	Kepler-141 b	0.257	0.69	\N	3.107675	f	0	\N	968	\N	\N	\N	f	f	2026-05-09 16:35:49.126783+00	2026-05-09 16:35:49.126783+00	t	Kepler-141	Transit	2014	982.33	\N
438	Kepler-142 d	5.31	2.16	\N	41.809118	f	0	\N	582	\N	\N	\N	f	f	2026-05-09 16:35:49.126785+00	2026-05-09 16:35:49.126785+00	t	Kepler-142	Transit	2014	1789.57	\N
439	Kepler-400 b	3.36	1.65	\N	9.024389	f	0	\N	939	\N	\N	\N	f	f	2026-05-09 16:35:49.126787+00	2026-05-09 16:35:49.126788+00	t	Kepler-400	Transit	2014	2759.18	\N
440	Kepler-204 c	3.86	1.79	\N	25.660593	f	0	\N	683	\N	\N	\N	f	f	2026-05-09 16:35:49.126789+00	2026-05-09 16:35:49.12679+00	t	Kepler-204	Transit	2014	2239.79	\N
441	WASP-41 c	1010.6994	13.1	\N	421	f	0	\N	241	\N	\N	\N	f	f	2026-05-09 16:35:49.126791+00	2026-05-09 16:35:49.126792+00	t	WASP-41	Radial Velocity	2015	532.84	\N
442	Kepler-312 c	10.1	3.15	\N	19.747412	f	0	\N	754	\N	\N	\N	f	f	2026-05-09 16:35:49.126793+00	2026-05-09 16:35:49.126794+00	t	Kepler-312	Transit	2014	2601.81	\N
443	Kepler-286 d	2.33	1.33	\N	5.914323	f	0	\N	919	\N	\N	\N	f	f	2026-05-09 16:35:49.126795+00	2026-05-09 16:35:49.126796+00	t	Kepler-286	Transit	2014	4001.44	\N
444	Kepler-91 b	257.4423	15.322703	\N	6.24658	f	0	\N	2040	\N	\N	\N	f	f	2026-05-09 16:35:49.126798+00	2026-05-09 16:35:49.126798+00	t	Kepler-91	Transit	2013	4222.71	\N
445	Kepler-1181 b	3.09	1.57	\N	4.89337519	f	0	\N	1374	\N	\N	\N	f	f	2026-05-09 16:35:49.1268+00	2026-05-09 16:35:49.1268+00	t	Kepler-1181	Transit	2016	3060.7	\N
446	Kepler-1489 b	3.78	1.77	\N	82.294751	f	0	\N	400	\N	\N	\N	f	f	2026-05-09 16:35:49.126802+00	2026-05-09 16:35:49.126802+00	t	Kepler-1489	Transit	2016	4184.74	\N
447	Kepler-1491 b	2.89	1.51	\N	16.5861762	f	0	\N	821	\N	\N	\N	f	f	2026-05-09 16:35:49.126804+00	2026-05-09 16:35:49.126805+00	t	Kepler-1491	Transit	2016	6737.05	\N
448	CoRoT-7 b	4.07660518	1.68135	\N	0.85359163	f	0	\N	1756	\N	\N	\N	f	f	2026-05-09 16:35:49.126806+00	2026-05-09 16:35:49.126807+00	t	CoRoT-7	Transit	2009	521.54	\N
449	HD 176986 d	6.76	2.49	\N	61.376	f	0	\N	363	\N	\N	\N	f	f	2026-05-09 16:35:49.126808+00	2026-05-09 16:35:49.126809+00	t	HD 176986	Radial Velocity	2026	90.62	\N
450	Kepler-354 b	4.04	1.84	\N	5.47666	f	0	\N	741	\N	\N	\N	f	f	2026-05-09 16:35:49.12681+00	2026-05-09 16:35:49.126811+00	t	Kepler-354	Transit	2014	1807.11	\N
451	Kepler-368 b	10.7	3.26	\N	26.84768	f	0	\N	800	\N	\N	\N	f	f	2026-05-09 16:35:49.126813+00	2026-05-09 16:35:49.126813+00	t	Kepler-368	Transit	2014	2514.59	\N
452	Kepler-135 b	3.93	1.81	\N	6.00253	f	0	\N	1209	\N	\N	\N	f	f	2026-05-09 16:35:49.126815+00	2026-05-09 16:35:49.126815+00	t	Kepler-135	Transit	2014	2028.22	\N
453	Kepler-383 b	2.3	1.32	\N	12.904532	f	0	\N	545	\N	\N	\N	f	f	2026-05-09 16:35:49.126817+00	2026-05-09 16:35:49.126818+00	t	Kepler-383	Transit	2014	1532.93	\N
454	HAT-P-66 b	248.86089	17.82231	\N	2.972086	f	0	\N	1896	\N	\N	\N	f	f	2026-05-09 16:35:49.126819+00	2026-05-09 16:35:49.12682+00	t	HAT-P-66	Transit	2016	3051.05	\N
455	WASP-118 b	163.36462	16.14096	\N	4.0460435	f	0	\N	1729	\N	\N	\N	f	f	2026-05-09 16:35:49.126821+00	2026-05-09 16:35:49.126822+00	t	WASP-118	Transit	2016	1228.49	\N
456	WASP-7 b	305.1168	14.90797	\N	4.9546416	f	0	\N	1487	\N	\N	\N	f	f	2026-05-09 16:35:49.126823+00	2026-05-09 16:35:49.126824+00	t	WASP-7	Transit	2008	529.36	\N
457	XO-4 b	451.3186	14.01125	\N	4.12508	f	0	\N	1630	\N	\N	\N	f	f	2026-05-09 16:35:49.126825+00	2026-05-09 16:35:49.126826+00	t	XO-4	Transit	2010	889.28	\N
458	KELT-2 A b	540.311	15.13215	\N	4.11379	f	0	\N	2080	\N	\N	\N	f	f	2026-05-09 16:35:49.126828+00	2026-05-09 16:35:49.126828+00	t	KELT-2 A	Transit	2012	437.24	\N
459	K2-30 b	184.02357	11.646151	\N	4.098503	f	0	\N	1092	\N	\N	\N	f	f	2026-05-09 16:35:49.12683+00	2026-05-09 16:35:49.12683+00	t	K2-30	Transit	2016	1086.24	\N
460	WASP-101 b	162.0933	16.02887	\N	3.58572	f	0	\N	1560	\N	\N	\N	f	f	2026-05-09 16:35:49.126832+00	2026-05-09 16:35:49.126832+00	t	WASP-101	Transit	2014	656.3	\N
461	Kepler-104 c	7.14430805	3.13	\N	23.668205	f	0	\N	668	\N	\N	\N	f	f	2026-05-09 16:35:49.126834+00	2026-05-09 16:35:49.126835+00	t	Kepler-104	Transit	2014	1307.18	\N
462	Kepler-369 c	2.57	1.41	\N	14.871572	f	0	\N	391	\N	\N	\N	f	f	2026-05-09 16:35:49.126836+00	2026-05-09 16:35:49.126837+00	t	Kepler-369	Transit	2014	697.97	\N
463	Kepler-371 b	4.23	1.89	\N	34.763278	f	0	\N	554	\N	\N	\N	f	f	2026-05-09 16:35:49.126838+00	2026-05-09 16:35:49.126839+00	t	Kepler-371	Transit	2014	2652.27	\N
464	Kepler-147 b	2.96	1.53	\N	12.610584	f	0	\N	953	\N	\N	\N	f	f	2026-05-09 16:35:49.12684+00	2026-05-09 16:35:49.126841+00	t	Kepler-147	Transit	2014	3398.61	\N
465	Kepler-132 d	3.02	1.55	\N	18.010199	f	0	\N	758	\N	\N	\N	f	f	2026-05-09 16:35:49.126843+00	2026-05-09 16:35:49.126843+00	t	Kepler-132	Transit	2014	1140.08	\N
466	Kepler-208 c	2.51	1.39	\N	7.466623	f	0	\N	1141	\N	\N	\N	f	f	2026-05-09 16:35:49.126845+00	2026-05-09 16:35:49.126845+00	t	Kepler-208	Transit	2014	2528.78	\N
467	Kepler-487 c	7.65	2.68	\N	38.6519976	f	0	\N	487	\N	\N	\N	f	f	2026-05-09 16:35:49.126847+00	2026-05-09 16:35:49.126848+00	t	Kepler-487	Transit	2016	2845.2	\N
468	Kepler-316 c	1.65	1.16	\N	6.827766	f	0	\N	577	\N	\N	\N	f	f	2026-05-09 16:35:49.126849+00	2026-05-09 16:35:49.12685+00	t	Kepler-316	Transit	2014	1255.5	\N
469	Kepler-313 b	6.94	2.53	\N	14.970418	f	0	\N	883	\N	\N	\N	f	f	2026-05-09 16:35:49.126851+00	2026-05-09 16:35:49.126852+00	t	Kepler-313	Transit	2014	3520.51	\N
470	Kepler-372 c	5.02	2.09	\N	20.053763	f	0	\N	755	\N	\N	\N	f	f	2026-05-09 16:35:49.126853+00	2026-05-09 16:35:49.126854+00	t	Kepler-372	Transit	2014	4872.61	\N
471	Kepler-373 b	2.42	1.36	\N	5.535309	f	0	\N	1054	\N	\N	\N	f	f	2026-05-09 16:35:49.126855+00	2026-05-09 16:35:49.126856+00	t	Kepler-373	Transit	2014	3556.57	\N
472	HD 176986 c	2097.98531461	\N	\N	16.8124	f	0	\N	558	\N	\N	\N	f	f	2026-05-09 16:35:49.126858+00	2026-05-09 16:35:49.126858+00	t	HD 176986	Radial Velocity	2017	90.62	\N
473	Kepler-151 c	5.02	2.09	\N	24.674612	f	0	\N	544	\N	\N	\N	f	f	2026-05-09 16:35:49.12686+00	2026-05-09 16:35:49.12686+00	t	Kepler-151	Transit	2014	2119.75	\N
474	Kepler-386 c	3.12	1.58	\N	25.193458	f	0	\N	513	\N	\N	\N	f	f	2026-05-09 16:35:49.126862+00	2026-05-09 16:35:49.126863+00	t	Kepler-386	Transit	2014	2878.2	\N
475	Kepler-215 c	3.78	1.77	\N	14.667108	f	0	\N	675	\N	\N	\N	f	f	2026-05-09 16:35:49.126864+00	2026-05-09 16:35:49.126865+00	t	Kepler-215	Transit	2014	1585.11	\N
476	Kepler-404 b	2.15	1.27	\N	11.829851	f	0	\N	730	\N	\N	\N	f	f	2026-05-09 16:35:49.126866+00	2026-05-09 16:35:49.126867+00	t	Kepler-404	Transit	2014	2650.1	\N
477	NGTS-33 b	1153.71711741	18.38272835	\N	2.827972	f	0	\N	1991	\N	\N	\N	f	f	2026-05-09 16:35:49.126871+00	2026-05-09 16:35:49.126872+00	t	NGTS-33	Transit	2024	1428.09	\N
478	OGLE-2018-BLG-1428L b	240	14	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126873+00	2026-05-09 16:35:49.126874+00	t	OGLE-2018-BLG-1428L	Microlensing	2021	20286.9	\N
479	HAT-P-30 b	263.7989	16.14096	\N	2.8106	f	0	\N	1630	\N	\N	\N	f	f	2026-05-09 16:35:49.126875+00	2026-05-09 16:35:49.126876+00	t	HAT-P-30	Transit	2011	697.92	\N
480	TOI-1288 c	85.7	11.1	\N	416	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126877+00	2026-05-09 16:35:49.126878+00	t	TOI-1288	Radial Velocity	2022	374.64	\N
481	Kepler-317 b	109.8	2.09	\N	5.524242	f	0	\N	976	\N	\N	\N	f	f	2026-05-09 16:35:49.12688+00	2026-05-09 16:35:49.12688+00	t	Kepler-317	Transit	2014	3067.77	\N
482	Kepler-319 c	7.41	2.63	\N	6.941357	f	0	\N	876	\N	\N	\N	f	f	2026-05-09 16:35:49.126882+00	2026-05-09 16:35:49.126882+00	t	Kepler-319	Transit	2014	1641.99	\N
483	Kepler-375 c	7.51	2.65	\N	19.986326	f	0	\N	720	\N	\N	\N	f	f	2026-05-09 16:35:49.126884+00	2026-05-09 16:35:49.126885+00	t	Kepler-375	Transit	2014	4040.45	\N
484	Kepler-356 c	3.93	1.81	\N	13.121632	f	0	\N	913	\N	\N	\N	f	f	2026-05-09 16:35:49.126886+00	2026-05-09 16:35:49.126887+00	t	Kepler-356	Transit	2014	2307.75	\N
485	Kepler-387 b	1.08	1.03	\N	6.791636	f	0	\N	994	\N	\N	\N	f	f	2026-05-09 16:35:49.126888+00	2026-05-09 16:35:49.126889+00	t	Kepler-387	Transit	2014	2612.68	\N
486	Kepler-388 b	0.457	0.81	\N	3.173315	f	0	\N	830	\N	\N	\N	f	f	2026-05-09 16:35:49.12689+00	2026-05-09 16:35:49.126891+00	t	Kepler-388	Transit	2014	1386.16	\N
487	Kepler-224 e	4.54	1.97	\N	18.643577	f	0	\N	517	\N	\N	\N	f	f	2026-05-09 16:35:49.126893+00	2026-05-09 16:35:49.126893+00	t	Kepler-224	Transit	2014	2550.83	\N
488	Kepler-226 d	1.98	1.22	\N	8.109044	f	0	\N	800	\N	\N	\N	f	f	2026-05-09 16:35:49.126895+00	2026-05-09 16:35:49.126896+00	t	Kepler-226	Transit	2014	3196.78	\N
489	Kepler-348 b	2.92	1.52	\N	7.05677	f	0	\N	1196	\N	\N	\N	f	f	2026-05-09 16:35:49.126897+00	2026-05-09 16:35:49.126898+00	t	Kepler-348	Transit	2014	1861.64	\N
490	Kepler-338 b	30.6	2.44	\N	13.726976	f	0	\N	1005	\N	\N	\N	f	f	2026-05-09 16:35:49.126899+00	2026-05-09 16:35:49.1269+00	t	Kepler-338	Transit	2014	1802.98	\N
491	Kepler-376 c	3.86	1.79	\N	14.172327	f	0	\N	873	\N	\N	\N	f	f	2026-05-09 16:35:49.126901+00	2026-05-09 16:35:49.126902+00	t	Kepler-376	Transit	2014	3010.64	\N
492	Kepler-377 c	4.9	2.06	\N	27.014976	f	0	\N	677	\N	\N	\N	f	f	2026-05-09 16:35:49.126903+00	2026-05-09 16:35:49.126904+00	t	Kepler-377	Transit	2014	2686.89	\N
493	Kepler-389 b	2.89	1.51	\N	3.244107	f	0	\N	1047	\N	\N	\N	f	f	2026-05-09 16:35:49.126906+00	2026-05-09 16:35:49.126906+00	t	Kepler-389	Transit	2014	2663.26	\N
494	Kepler-118 b	4.5	1.96	\N	7.518496	f	0	\N	784	\N	\N	\N	f	f	2026-05-09 16:35:49.126908+00	2026-05-09 16:35:49.126908+00	t	Kepler-118	Transit	2014	1872.88	\N
495	Kepler-123 c	2.79	1.48	\N	26.695074	f	0	\N	706	\N	\N	\N	f	f	2026-05-09 16:35:49.12691+00	2026-05-09 16:35:49.126911+00	t	Kepler-123	Transit	2014	3332.21	\N
496	Kepler-243 c	4.62	1.99	\N	20.026218	f	0	\N	559	\N	\N	\N	f	f	2026-05-09 16:35:49.126912+00	2026-05-09 16:35:49.126913+00	t	Kepler-243	Transit	2014	2263.07	\N
497	GJ 3470 b	13.9	4.57	\N	3.3366496	f	0	\N	593.5	\N	\N	\N	f	f	2026-05-09 16:35:49.126914+00	2026-05-09 16:35:49.126915+00	t	GJ 3470	Radial Velocity	2012	95.96	\N
498	Kepler-379 c	5.86	2.29	\N	62.784697	f	0	\N	530	\N	\N	\N	f	f	2026-05-09 16:35:49.126916+00	2026-05-09 16:35:49.126917+00	t	Kepler-379	Transit	2014	2385.09	\N
499	Kepler-112 c	6.35	2.4	\N	28.574263	f	0	\N	538	\N	\N	\N	f	f	2026-05-09 16:35:49.126918+00	2026-05-09 16:35:49.126919+00	t	Kepler-112	Transit	2014	1673.85	\N
500	Kepler-137 c	4.19	1.88	\N	18.735753	f	0	\N	568	\N	\N	\N	f	f	2026-05-09 16:35:49.126921+00	2026-05-09 16:35:49.126921+00	t	Kepler-137	Transit	2014	988.18	\N
501	Kepler-390 b	0.477	0.82	\N	6.738088	f	0	\N	786	\N	\N	\N	f	f	2026-05-09 16:35:49.126923+00	2026-05-09 16:35:49.126923+00	t	Kepler-390	Transit	2014	1419.68	\N
502	K2-400 b	1.67	1.163	\N	3.865053	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126925+00	2026-05-09 16:35:49.126926+00	t	K2-400	Transit	2022	203.46	\N
503	HD 6860 b	8981.83078182	11.9	\N	663.87	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:35:49.126927+00	2026-05-09 16:35:49.126928+00	t	HD 6860	Radial Velocity	2023	199.36	\N
504	WASP-155 b	276.8285425	13.45077684	\N	3.110413	f	0	\N	1468	\N	\N	\N	f	f	2026-05-09 16:35:49.126929+00	2026-05-09 16:35:49.12693+00	t	WASP-155	Transit	2025	1303.42	\N
505	Kepler-351 c	11.1	3.19	\N	57.24809	f	0	\N	431	\N	\N	\N	f	f	2026-05-09 16:35:49.126931+00	2026-05-09 16:35:49.126932+00	t	Kepler-351	Transit	2014	3535.24	\N
506	Kepler-327 b	1.41	1.11	\N	2.549575	f	0	\N	682	\N	\N	\N	f	f	2026-05-09 16:35:49.126933+00	2026-05-09 16:35:49.126934+00	t	Kepler-327	Transit	2014	789.26	\N
507	Kepler-114 b	1.09	1.26	\N	5.188549	f	0	\N	586	\N	\N	\N	f	f	2026-05-09 16:35:49.126936+00	2026-05-09 16:35:49.126936+00	t	Kepler-114	Transit	2014	846.48	\N
508	Kepler-358 c	8.5	2.85	\N	83.488369	f	0	\N	411	\N	\N	\N	f	f	2026-05-09 16:35:49.126938+00	2026-05-09 16:35:49.126938+00	t	Kepler-358	Transit	2014	3591.3	\N
509	Kepler-169 c	1.92	1.21	\N	6.195469	f	0	\N	776	\N	\N	\N	f	f	2026-05-09 16:40:58.415927+00	2026-05-09 16:40:58.415933+00	t	Kepler-169	Transit	2014	1325.92	\N
510	Kepler-236 b	3.09	1.57	\N	8.295611	f	0	\N	469	\N	\N	\N	f	f	2026-05-09 16:40:58.415937+00	2026-05-09 16:40:58.415938+00	t	Kepler-236	Transit	2014	941.82	\N
511	Kepler-141 c	2.57	1.41	\N	7.010606	f	0	\N	738	\N	\N	\N	f	f	2026-05-09 16:40:58.415941+00	2026-05-09 16:40:58.415943+00	t	Kepler-141	Transit	2014	982.33	\N
512	Kepler-858 b	21.1	4.87	\N	76.13602028	f	0	\N	399	\N	\N	\N	f	f	2026-05-09 16:40:58.415945+00	2026-05-09 16:40:58.415946+00	t	Kepler-858	Transit	2016	973.68	\N
513	Kepler-855 b	52.7	8.35	\N	7.886631104	f	0	\N	996	\N	\N	\N	f	f	2026-05-09 16:40:58.415949+00	2026-05-09 16:40:58.41595+00	t	Kepler-855	Transit	2016	4913.8	\N
514	Kepler-321 c	5.99	2.32	\N	13.093921	f	0	\N	752	\N	\N	\N	f	f	2026-05-09 16:40:58.415952+00	2026-05-09 16:40:58.415953+00	t	Kepler-321	Transit	2014	1254.21	\N
515	Kepler-349 b	94.5	1.9	\N	5.929778	f	0	\N	972	\N	\N	\N	f	f	2026-05-09 16:40:58.415955+00	2026-05-09 16:40:58.415956+00	t	Kepler-349	Transit	2014	3068.23	\N
516	Kepler-353 c	2.48	1.38	\N	8.410894	f	0	\N	472	\N	\N	\N	f	f	2026-05-09 16:40:58.415959+00	2026-05-09 16:40:58.41596+00	t	Kepler-353	Transit	2014	1254.7	\N
517	Kepler-359 c	2.9	4.3	\N	57.68802	f	0	\N	512	\N	\N	\N	f	f	2026-05-09 16:40:58.415962+00	2026-05-09 16:40:58.415963+00	t	Kepler-359	Transit	2014	4707.12	\N
518	Kepler-173 b	2.21	1.29	\N	4.263742	f	0	\N	1179	\N	\N	\N	f	f	2026-05-09 16:40:58.415965+00	2026-05-09 16:40:58.415967+00	t	Kepler-173	Transit	2014	2717.42	\N
519	K2-29 b	232.0159	13.33871	\N	3.2588321	f	0	\N	1171	\N	\N	\N	f	f	2026-05-09 16:40:58.415969+00	2026-05-09 16:40:58.41597+00	t	K2-29	Transit	2016	582.11	\N
520	Kepler-180 b	2.86	1.5	\N	13.817124	f	0	\N	781	\N	\N	\N	f	f	2026-05-09 16:40:58.415973+00	2026-05-09 16:40:58.415974+00	t	Kepler-180	Transit	2014	2268.9	\N
521	Kepler-244 d	15.2	2.31	\N	20.050401	f	0	\N	622	\N	\N	\N	f	f	2026-05-09 16:40:58.415976+00	2026-05-09 16:40:58.415977+00	t	Kepler-244	Transit	2014	3380.57	\N
522	Kepler-254 c	3.2	2.15	\N	12.412183	f	0	\N	787	\N	\N	\N	f	f	2026-05-09 16:40:58.415979+00	2026-05-09 16:40:58.41598+00	t	Kepler-254	Transit	2014	4531.87	\N
523	WASP-92 b	255.85315	16.376349	\N	2.1746742	f	0	\N	1871	\N	\N	\N	f	f	2026-05-09 16:40:58.415983+00	2026-05-09 16:40:58.415984+00	t	WASP-92	Transit	2016	1878.3	\N
524	TOI-6109 b	21.1	4.8704	\N	5.690476	f	0	\N	700	\N	\N	\N	f	f	2026-05-09 16:40:58.415986+00	2026-05-09 16:40:58.415987+00	t	TOI-6109	Transit	2025	494.9	\N
525	Kepler-619 d	16.2	4.17	\N	11.67894236	f	0	\N	830	\N	\N	\N	f	f	2026-05-09 16:40:58.415989+00	2026-05-09 16:40:58.41599+00	t	Kepler-619	Transit	2023	2937.62	\N
526	Kepler-138 d	2.1	1.51	\N	23.0923	f	0	\N	345	\N	\N	\N	f	f	2026-05-09 16:40:58.415993+00	2026-05-09 16:40:58.415994+00	t	Kepler-138	Transit	2014	218.08	\N
527	Kepler-330 c	4.46	1.95	\N	15.955387	f	0	\N	573	\N	\N	\N	f	f	2026-05-09 16:40:58.415997+00	2026-05-09 16:40:58.415998+00	t	Kepler-330	Transit	2014	2340.26	\N
528	Kepler-1243 b	3.71	1.75	\N	16.8320729	f	0	\N	690	\N	\N	\N	f	f	2026-05-09 16:40:58.416+00	2026-05-09 16:40:58.416001+00	t	Kepler-1243	Transit	2016	2472.82	\N
529	Kepler-360 b	3.36	1.65	\N	3.289672	f	0	\N	1116	\N	\N	\N	f	f	2026-05-09 16:40:58.416003+00	2026-05-09 16:40:58.416004+00	t	Kepler-360	Transit	2014	2857.27	\N
530	Kepler-49 e	1.03815	1.56	\N	18.596108	f	0	\N	371	\N	\N	\N	f	f	2026-05-09 16:40:58.416007+00	2026-05-09 16:40:58.416008+00	t	Kepler-49	Transit	2014	1015.07	\N
531	Kepler-140 b	3.22	1.61	\N	3.25427	f	0	\N	1301	\N	\N	\N	f	f	2026-05-09 16:40:58.41601+00	2026-05-09 16:40:58.416011+00	t	Kepler-140	Transit	2014	1904.29	\N
532	Kepler-122 d	5.48	2.2	\N	21.587475	f	0	\N	747	\N	\N	\N	f	f	2026-05-09 16:40:58.416014+00	2026-05-09 16:40:58.416015+00	t	Kepler-122	Transit	2014	3351.09	\N
533	HIP 113103 b	4	1.829	\N	7.610303	f	0	\N	721	\N	\N	\N	f	f	2026-05-09 16:40:58.416017+00	2026-05-09 16:40:58.416018+00	t	HIP 113103	Transit	2023	150.72	\N
534	HD 28109 d	5.8	3.11	\N	84.2899	f	0	\N	561	\N	\N	\N	f	f	2026-05-09 16:40:58.41602+00	2026-05-09 16:40:58.416021+00	t	HD 28109	Transit	2022	455.35	\N
535	Kepler-37 c	1.3	0.755	\N	21.301848	f	0	\N	615	\N	\N	\N	f	f	2026-05-09 16:40:58.416024+00	2026-05-09 16:40:58.416025+00	t	Kepler-37	Transit	2013	208.48	\N
536	Kepler-268 c	11.4	3.38	\N	83.446393	f	0	\N	471	\N	\N	\N	f	f	2026-05-09 16:40:58.416027+00	2026-05-09 16:40:58.416028+00	t	Kepler-268	Transit	2014	2778.43	\N
537	Kepler-171 c	7.08	2.56	\N	11.463462	f	0	\N	752	\N	\N	\N	f	f	2026-05-09 16:40:58.41603+00	2026-05-09 16:40:58.416031+00	t	Kepler-171	Transit	2014	2817.51	\N
538	Kepler-133 c	8.45	2.84	\N	31.517586	f	0	\N	663	\N	\N	\N	f	f	2026-05-09 16:40:58.416034+00	2026-05-09 16:40:58.416035+00	t	Kepler-133	Transit	2014	2131.76	\N
539	Kepler-185 b	1.71	1.17	\N	1.6329	f	0	\N	1237	\N	\N	\N	f	f	2026-05-09 16:40:58.416037+00	2026-05-09 16:40:58.416038+00	t	Kepler-185	Transit	2014	1522.28	\N
540	WASP-50 b	466.828704	13.069694	\N	1.9551	f	0	\N	1394.84	\N	\N	\N	f	f	2026-05-09 16:40:58.416041+00	2026-05-09 16:40:58.416042+00	t	WASP-50	Transit	2011	602.89	\N
541	HD 167768 b	270.15414595	13.9	\N	20.6532	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.416044+00	2026-05-09 16:40:58.416045+00	t	HD 167768	Radial Velocity	2022	349.68	\N
542	Kepler-346 b	7.56	2.66	\N	6.511127	f	0	\N	1008	\N	\N	\N	f	f	2026-05-09 16:40:58.416047+00	2026-05-09 16:40:58.416048+00	t	Kepler-346	Transit	2014	3209.72	\N
543	Kepler-718 b	\N	16.56	\N	2.052349905	f	0	\N	1497	\N	\N	\N	f	f	2026-05-09 16:40:58.416051+00	2026-05-09 16:40:58.416052+00	t	Kepler-718	Transit	2016	4247.63	\N
544	Kepler-720 b	53.4	8.41	\N	4.708326542	f	0	\N	1162	\N	\N	\N	f	f	2026-05-09 16:40:58.416054+00	2026-05-09 16:40:58.416055+00	t	Kepler-720	Transit	2016	3474.77	\N
545	Kepler-1241 b	7.41	2.63	\N	18.5525701	f	0	\N	612	\N	\N	\N	f	f	2026-05-09 16:40:58.416057+00	2026-05-09 16:40:58.416058+00	t	Kepler-1241	Transit	2016	3159.54	\N
546	Kepler-495 b	23.8	5.23	\N	3.413036221	f	0	\N	1200	\N	\N	\N	f	f	2026-05-09 16:40:58.416061+00	2026-05-09 16:40:58.416062+00	t	Kepler-495	Transit	2016	2149.12	\N
547	Kepler-281 b	324	2.82	\N	14.646008	f	0	\N	694	\N	\N	\N	f	f	2026-05-09 16:40:58.416064+00	2026-05-09 16:40:58.416065+00	t	Kepler-281	Transit	2014	5692.89	\N
548	Kepler-288 b	3.43	1.67	\N	6.097326	f	0	\N	1197	\N	\N	\N	f	f	2026-05-09 16:40:58.416068+00	2026-05-09 16:40:58.416069+00	t	Kepler-288	Transit	2014	3894.79	\N
549	Kepler-394 b	3.19	1.6	\N	8.005013	f	0	\N	1035	\N	\N	\N	f	f	2026-05-09 16:40:58.416071+00	2026-05-09 16:40:58.416073+00	t	Kepler-394	Transit	2014	3453.08	\N
550	Kepler-189 b	1.92	1.21	\N	10.399931	f	0	\N	678	\N	\N	\N	f	f	2026-05-09 16:40:58.416075+00	2026-05-09 16:40:58.416077+00	t	Kepler-189	Transit	2014	1929.32	\N
551	HD 27894 d	2063.65984665	12.7	\N	5019.54244	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.416079+00	2026-05-09 16:40:58.41608+00	t	HD 27894	Radial Velocity	2017	142.93	\N
552	TOI-2986 b	96.61983573	9.292245	\N	3.2783662	f	0	\N	1622	\N	\N	\N	f	f	2026-05-09 16:40:58.416082+00	2026-05-09 16:40:58.416083+00	t	TOI-2986	Transit	2025	1836.74	\N
553	WASP-154 b	198.96058278	10.76062147	\N	3.811678	f	0	\N	994	\N	\N	\N	f	f	2026-05-09 16:40:58.416086+00	2026-05-09 16:40:58.416087+00	t	WASP-154	Transit	2025	702.87	\N
554	Kepler-1990 c	0.904	0.98	\N	4.06844957	f	0	\N	1170	\N	\N	\N	f	f	2026-05-09 16:40:58.416089+00	2026-05-09 16:40:58.41609+00	t	Kepler-1990	Transit	2023	1280.94	\N
555	Kepler-148 b	3.89	1.8	\N	1.729366	f	0	\N	1284	\N	\N	\N	f	f	2026-05-09 16:40:58.416092+00	2026-05-09 16:40:58.416093+00	t	Kepler-148	Transit	2014	2580.43	\N
556	Kepler-178 c	8.65	2.88	\N	20.552802	f	0	\N	656	\N	\N	\N	f	f	2026-05-09 16:40:58.416096+00	2026-05-09 16:40:58.416097+00	t	Kepler-178	Transit	2014	2335.36	\N
557	Kepler-686 b	\N	12.15	\N	1.594745463	f	0	\N	1539	\N	\N	\N	f	f	2026-05-09 16:40:58.416099+00	2026-05-09 16:40:58.4161+00	t	Kepler-686	Transit	2016	4862.79	\N
558	Kepler-468 b	\N	13.34	\N	38.478757067	f	0	\N	484	\N	\N	\N	f	f	2026-05-09 16:40:58.416102+00	2026-05-09 16:40:58.416103+00	t	Kepler-468	Transit	2016	1444.45	\N
559	Kepler-953 c	1.81	1.19	\N	9.10967112	f	0	\N	873	\N	\N	\N	f	f	2026-05-09 16:40:58.416106+00	2026-05-09 16:40:58.416107+00	t	Kepler-953	Transit	2016	844.4	\N
560	Kepler-342 b	5.69	2.25	\N	15.170318	f	0	\N	905	\N	\N	\N	f	f	2026-05-09 16:40:58.416109+00	2026-05-09 16:40:58.41611+00	t	Kepler-342	Transit	2014	2549.27	\N
561	Kepler-334 c	2.63	1.43	\N	12.758005	f	0	\N	822	\N	\N	\N	f	f	2026-05-09 16:40:58.416113+00	2026-05-09 16:40:58.416114+00	t	Kepler-334	Transit	2014	1391.35	\N
562	Kepler-291 c	4.19	1.88	\N	5.700786	f	0	\N	1035	\N	\N	\N	f	f	2026-05-09 16:40:58.416116+00	2026-05-09 16:40:58.416117+00	t	Kepler-291	Transit	2014	5826.71	\N
563	Kepler-298 c	4.38	1.93	\N	22.92881	f	0	\N	416	\N	\N	\N	f	f	2026-05-09 16:40:58.41612+00	2026-05-09 16:40:58.416121+00	t	Kepler-298	Transit	2014	1690.15	\N
564	Kepler-190 c	2.73	1.46	\N	3.763024	f	0	\N	948	\N	\N	\N	f	f	2026-05-09 16:40:58.416123+00	2026-05-09 16:40:58.416124+00	t	Kepler-190	Transit	2014	1413.52	\N
565	Kepler-191 c	4.12	1.86	\N	17.738506	f	0	\N	596	\N	\N	\N	f	f	2026-05-09 16:40:58.416126+00	2026-05-09 16:40:58.416127+00	t	Kepler-191	Transit	2014	1938.88	\N
566	BD-08 2823 c	104	12.5	\N	237.6	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.41613+00	2026-05-09 16:40:58.416131+00	t	BD-08 2823	Radial Velocity	2009	134.81	\N
567	HD 10180 f	23.9	5.24	\N	122.744	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.416133+00	2026-05-09 16:40:58.416134+00	t	HD 10180	Radial Velocity	2010	127.07	\N
568	Kepler-207 c	2.86	1.5	\N	3.071571	f	0	\N	1556	\N	\N	\N	f	f	2026-05-09 16:40:58.416136+00	2026-05-09 16:40:58.416137+00	t	Kepler-207	Transit	2014	2855.56	\N
569	Kepler-224 b	2.51	1.39	\N	3.132924	f	0	\N	937	\N	\N	\N	f	f	2026-05-09 16:40:58.416139+00	2026-05-09 16:40:58.41614+00	t	Kepler-224	Transit	2014	2550.83	\N
570	TOI-5678 b	20	4.91	\N	47.73022	f	0	\N	513	\N	\N	\N	f	f	2026-05-09 16:40:58.416143+00	2026-05-09 16:40:58.416144+00	t	TOI-5678	Transit	2023	539.44	\N
571	TOI-836.01	9.6	2.587	\N	8.59545	f	0	\N	665	\N	\N	\N	f	f	2026-05-09 16:40:58.416146+00	2026-05-09 16:40:58.416147+00	t	TOI-836	Transit	2021	89.7	\N
572	HIP 75092 b	568.91284853	13.5	\N	926.4	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.416149+00	2026-05-09 16:40:58.41615+00	t	HIP 75092	Radial Velocity	2021	266.37	\N
573	Kepler-337 c	4.86	2.05	\N	9.693201	f	0	\N	1017	\N	\N	\N	f	f	2026-05-09 16:40:58.416153+00	2026-05-09 16:40:58.416154+00	t	Kepler-337	Transit	2014	2211.26	\N
574	Kepler-299 d	4.12	1.86	\N	15.054786	f	0	\N	729	\N	\N	\N	f	f	2026-05-09 16:40:58.416156+00	2026-05-09 16:40:58.416157+00	t	Kepler-299	Transit	2014	3431.94	\N
575	Kepler-953 b	16.5	4.21	\N	88.40655258	f	0	\N	410	\N	\N	\N	f	f	2026-05-09 16:40:58.416159+00	2026-05-09 16:40:58.41616+00	t	Kepler-953	Transit	2016	844.4	\N
576	Kepler-493 b	\N	15.13	\N	3.003876581	f	0	\N	1438	\N	\N	\N	f	f	2026-05-09 16:40:58.416162+00	2026-05-09 16:40:58.416163+00	t	Kepler-493	Transit	2016	5693.93	\N
577	Kepler-303 c	1.55	1.14	\N	7.061149	f	0	\N	521	\N	\N	\N	f	f	2026-05-09 16:40:58.416166+00	2026-05-09 16:40:58.416167+00	t	Kepler-303	Transit	2014	684.07	\N
578	Kepler-137 b	2.76	1.47	\N	8.436387	f	0	\N	742	\N	\N	\N	f	f	2026-05-09 16:40:58.416169+00	2026-05-09 16:40:58.41617+00	t	Kepler-137	Transit	2014	988.18	\N
579	WASP-77 A b	529.31142902	13.56	\N	1.360029395	f	0	\N	1674	\N	\N	\N	f	f	2026-05-09 16:40:58.416172+00	2026-05-09 16:40:58.416173+00	t	WASP-77 A	Transit	2012	343.01	\N
580	HD 22946 d	26.57	2.607	\N	47.42489	f	0	\N	546	\N	\N	\N	f	f	2026-05-09 16:40:58.416175+00	2026-05-09 16:40:58.416176+00	t	HD 22946	Transit	2023	204.76	\N
581	Kepler-68 e	86.4493267	11.2	\N	3455	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.416179+00	2026-05-09 16:40:58.41618+00	t	Kepler-68	Radial Velocity	2023	470.21	\N
582	Kepler-228 b	2.96	1.53	\N	2.566546	f	0	\N	1360	\N	\N	\N	f	f	2026-05-09 16:40:58.416182+00	2026-05-09 16:40:58.416183+00	t	Kepler-228	Transit	2014	5363.99	\N
583	Kepler-238 c	152.522	2.39	\N	6.155557	f	0	\N	1146	\N	\N	\N	f	f	2026-05-09 16:40:58.416185+00	2026-05-09 16:40:58.416186+00	t	Kepler-238	Transit	2014	5866.73	\N
584	KOI-7368 b	5.56	2.22	\N	6.8430344	f	0	\N	805	\N	\N	\N	f	f	2026-05-09 16:40:58.416189+00	2026-05-09 16:40:58.41619+00	t	KOI-7368	Transit	2022	864.3	\N
585	TOI-6008 b	4	1.03	\N	0.8574347	f	0	\N	707	\N	\N	\N	f	f	2026-05-09 16:40:58.416192+00	2026-05-09 16:40:58.416193+00	t	TOI-6008	Transit	2024	75.34	\N
586	Kepler-324 c	6.2	3.15	\N	51.805612	f	0	\N	410	\N	\N	\N	f	f	2026-05-09 16:40:58.416195+00	2026-05-09 16:40:58.416196+00	t	Kepler-324	Transit	2014	1635.91	\N
587	Kepler-188 b	3.46	1.68	\N	2.061897	f	0	\N	1463	\N	\N	\N	f	f	2026-05-09 16:40:58.416199+00	2026-05-09 16:40:58.4162+00	t	Kepler-188	Transit	2014	3158.96	\N
588	Kepler-126 b	4.11726105	1.52	\N	10.495711	f	0	\N	1009	\N	\N	\N	f	f	2026-05-09 16:40:58.416202+00	2026-05-09 16:40:58.416203+00	t	Kepler-126	Transit	2014	774.3	\N
589	HD 134606 c	11.31	3.37	\N	58.883	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.416205+00	2026-05-09 16:40:58.416206+00	t	HD 134606	Radial Velocity	2024	87.38	\N
590	TOI-6324 b	1.17	1.059	\N	0.279221	f	0	\N	1216	\N	\N	\N	f	f	2026-05-09 16:40:58.416209+00	2026-05-09 16:40:58.41621+00	t	TOI-6324	Transit	2025	67.02	\N
591	TOI-1422 b	9.5	3.83	\N	12.99894	f	0	\N	870	\N	\N	\N	f	f	2026-05-09 16:40:58.416212+00	2026-05-09 16:40:58.416213+00	t	TOI-1422	Transit	2022	506	\N
592	Kepler-136 c	4.62	1.99	\N	16.399235	f	0	\N	847	\N	\N	\N	f	f	2026-05-09 16:40:58.416215+00	2026-05-09 16:40:58.416216+00	t	Kepler-136	Transit	2014	1372.52	\N
593	Kepler-198 c	6.66	2.47	\N	49.567416	f	0	\N	465	\N	\N	\N	f	f	2026-05-09 16:40:58.416219+00	2026-05-09 16:40:58.41622+00	t	Kepler-198	Transit	2014	1615.64	\N
594	Kepler-398 b	0.749	0.93	\N	4.081423	f	0	\N	755	\N	\N	\N	f	f	2026-05-09 16:40:58.416222+00	2026-05-09 16:40:58.416223+00	t	Kepler-398	Transit	2014	578.45	\N
595	Kepler-244 c	4.86	2.05	\N	9.767292	f	0	\N	791	\N	\N	\N	f	f	2026-05-09 16:40:58.416225+00	2026-05-09 16:40:58.416226+00	t	Kepler-244	Transit	2014	3380.57	\N
596	Kepler-247 b	3.33	1.64	\N	3.33616	f	0	\N	970	\N	\N	\N	f	f	2026-05-09 16:40:58.416228+00	2026-05-09 16:40:58.41623+00	t	Kepler-247	Transit	2014	2164.73	\N
597	TOI-5786 b	73	8.54	\N	12.779107	f	0	\N	1040	\N	\N	\N	f	f	2026-05-09 16:40:58.416232+00	2026-05-09 16:40:58.416233+00	t	TOI-5786	Transit	2025	627.77	\N
598	KMT-2021-BLG-0192L b	34.96112477	6.56	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.416235+00	2026-05-09 16:40:58.416236+00	t	KMT-2021-BLG-0192L	Microlensing	2022	16699.19	\N
599	TOI-4914 b	227	12.87	\N	10.60057	f	0	\N	894	\N	\N	\N	f	f	2026-05-09 16:40:58.416238+00	2026-05-09 16:40:58.416239+00	t	TOI-4914	Transit	2024	978.11	\N
600	K2-185 c	6.3	2.39	\N	52.713494	f	0	\N	477	\N	\N	\N	f	f	2026-05-09 16:40:58.416241+00	2026-05-09 16:40:58.416243+00	t	K2-185	Transit	2018	875.26	\N
601	Kepler-301 d	3.71	1.75	\N	13.751243	f	0	\N	725	\N	\N	\N	f	f	2026-05-09 16:40:58.416245+00	2026-05-09 16:40:58.416246+00	t	Kepler-301	Transit	2014	2345.6	\N
602	Kepler-301 c	2.39	1.35	\N	5.419026	f	0	\N	989	\N	\N	\N	f	f	2026-05-09 16:40:58.416248+00	2026-05-09 16:40:58.416249+00	t	Kepler-301	Transit	2014	2345.6	\N
603	Kepler-342 d	6.76	2.49	\N	39.459357	f	0	\N	658	\N	\N	\N	f	f	2026-05-09 16:40:58.416251+00	2026-05-09 16:40:58.416252+00	t	Kepler-342	Transit	2014	2549.27	\N
604	Kepler-191 b	2.36	1.34	\N	9.939632	f	0	\N	722	\N	\N	\N	f	f	2026-05-09 16:40:58.416254+00	2026-05-09 16:40:58.416256+00	t	Kepler-191	Transit	2014	1938.88	\N
605	Kepler-194 d	6.35	2.4	\N	52.814973	f	0	\N	562	\N	\N	\N	f	f	2026-05-09 16:40:58.416258+00	2026-05-09 16:40:58.416259+00	t	Kepler-194	Transit	2014	3581.1	\N
606	Kepler-208 e	2.79	1.48	\N	16.259458	f	0	\N	880	\N	\N	\N	f	f	2026-05-09 16:40:58.416261+00	2026-05-09 16:40:58.416262+00	t	Kepler-208	Transit	2014	2528.78	\N
607	Kepler-344 c	9.01	2.95	\N	125.596809	f	0	\N	360	\N	\N	\N	f	f	2026-05-09 16:40:58.416264+00	2026-05-09 16:40:58.416265+00	t	Kepler-344	Transit	2014	3271.15	\N
608	Kepler-304 d	8	2.75	\N	9.653471	f	0	\N	611	\N	\N	\N	f	f	2026-05-09 16:40:58.416267+00	2026-05-09 16:40:58.416268+00	t	Kepler-304	Transit	2014	1417.75	\N
609	Kepler-304 c	5.35	2.17	\N	5.315946	f	0	\N	746	\N	\N	\N	f	f	2026-05-09 16:40:58.416271+00	2026-05-09 16:40:58.416272+00	t	Kepler-304	Transit	2014	1417.75	\N
610	Kepler-81 d	1.92	1.21	\N	20.837846	f	0	\N	418	\N	\N	\N	f	f	2026-05-09 16:40:58.416274+00	2026-05-09 16:40:58.416275+00	t	Kepler-81	Transit	2014	1135.97	\N
611	Kepler-548 b	\N	11.99	\N	4.454194338	f	0	\N	1017	\N	\N	\N	f	f	2026-05-09 16:40:58.416277+00	2026-05-09 16:40:58.416278+00	t	Kepler-548	Transit	2016	2451.96	\N
612	Kepler-723 b	\N	12.19	\N	4.082275068	f	0	\N	1016	\N	\N	\N	f	f	2026-05-09 16:40:58.41628+00	2026-05-09 16:40:58.416281+00	t	Kepler-723	Transit	2016	3495.74	\N
613	Kepler-197 e	0.693	0.91	\N	25.209715	f	0	\N	691	\N	\N	\N	f	f	2026-05-09 16:40:58.416284+00	2026-05-09 16:40:58.416285+00	t	Kepler-197	Transit	2014	1078.19	\N
614	Kepler-200 c	3.15	1.59	\N	10.222157	f	0	\N	806	\N	\N	\N	f	f	2026-05-09 16:40:58.416287+00	2026-05-09 16:40:58.416288+00	t	Kepler-200	Transit	2014	2171.91	\N
615	Kepler-346 c	9.64	3.07	\N	23.851549	f	0	\N	654	\N	\N	\N	f	f	2026-05-09 16:40:58.41629+00	2026-05-09 16:40:58.416291+00	t	Kepler-346	Transit	2014	3209.72	\N
616	Kepler-350 b	16.9	1.85	\N	11.189562	f	0	\N	1037	\N	\N	\N	f	f	2026-05-09 16:40:58.416293+00	2026-05-09 16:40:58.416294+00	t	Kepler-350	Transit	2014	3120.85	\N
617	Kepler-306 e	5.77	2.27	\N	44.840975	f	0	\N	390	\N	\N	\N	f	f	2026-05-09 16:40:58.416297+00	2026-05-09 16:40:58.416298+00	t	Kepler-306	Transit	2014	2529.92	\N
618	Kepler-84 e	7.27	2.6	\N	27.434389	f	0	\N	672	\N	\N	\N	f	f	2026-05-09 16:40:58.4163+00	2026-05-09 16:40:58.416301+00	t	Kepler-84	Transit	2014	3339.51	\N
619	Kepler-265 e	7.22	2.59	\N	67.831024	f	0	\N	476	\N	\N	\N	f	f	2026-05-09 16:40:58.416303+00	2026-05-09 16:40:58.416304+00	t	Kepler-265	Transit	2014	4175.61	\N
620	Kepler-217 c	4.08	1.85	\N	8.586004	f	0	\N	1208	\N	\N	\N	f	f	2026-05-09 16:40:58.416306+00	2026-05-09 16:40:58.416308+00	t	Kepler-217	Transit	2014	3602.85	\N
621	Kepler-220 d	0.904	0.98	\N	28.122397	f	0	\N	401	\N	\N	\N	f	f	2026-05-09 16:40:58.41631+00	2026-05-09 16:40:58.416311+00	t	Kepler-220	Transit	2014	558.08	\N
622	Kepler-351 b	4.8	3.06	\N	37.054919	f	0	\N	498	\N	\N	\N	f	f	2026-05-09 16:40:58.416313+00	2026-05-09 16:40:58.416314+00	t	Kepler-351	Transit	2014	3535.24	\N
623	Kepler-352 b	0.566	0.86	\N	10.05537	f	0	\N	694	\N	\N	\N	f	f	2026-05-09 16:40:58.416316+00	2026-05-09 16:40:58.416317+00	t	Kepler-352	Transit	2014	824.3	\N
624	Kepler-84 d	2.48	1.38	\N	4.224537	f	0	\N	1254	\N	\N	\N	f	f	2026-05-09 16:40:58.41632+00	2026-05-09 16:40:58.416321+00	t	Kepler-84	Transit	2014	3339.51	\N
625	Kepler-310 d	7	2.47	\N	92.876125	f	0	\N	353	\N	\N	\N	f	f	2026-05-09 16:40:58.416323+00	2026-05-09 16:40:58.416324+00	t	Kepler-310	Transit	2014	1964.33	\N
626	Kepler-282 b	1.01	1.01	\N	9.220524	f	0	\N	817	\N	\N	\N	f	f	2026-05-09 16:40:58.416326+00	2026-05-09 16:40:58.416327+00	t	Kepler-282	Transit	2014	4362.7	\N
627	Kepler-282 c	1.87	1.2	\N	13.638723	f	0	\N	717	\N	\N	\N	f	f	2026-05-09 16:40:58.416329+00	2026-05-09 16:40:58.416331+00	t	Kepler-282	Transit	2014	4362.7	\N
628	Kepler-220 e	2.33	1.33	\N	45.902733	f	0	\N	341	\N	\N	\N	f	f	2026-05-09 16:40:58.416333+00	2026-05-09 16:40:58.416334+00	t	Kepler-220	Transit	2014	558.08	\N
629	Kepler-154 c	9.01	2.95	\N	62.303276	f	0	\N	454	\N	\N	\N	f	f	2026-05-09 16:40:58.416336+00	2026-05-09 16:40:58.416337+00	t	Kepler-154	Transit	2014	2985.02	\N
630	Kepler-353 b	0.64	0.89	\N	5.795278	f	0	\N	534	\N	\N	\N	f	f	2026-05-09 16:40:58.416339+00	2026-05-09 16:40:58.41634+00	t	Kepler-353	Transit	2014	1254.7	\N
631	Kepler-85 e	0.6	1.27	\N	25.216751	f	0	\N	559	\N	\N	\N	f	f	2026-05-09 16:40:58.416342+00	2026-05-09 16:40:58.416343+00	t	Kepler-85	Transit	2014	2495.17	\N
632	Kepler-55 e	3.02	1.55	\N	4.617534	f	0	\N	728	\N	\N	\N	f	f	2026-05-09 16:40:58.416346+00	2026-05-09 16:40:58.416347+00	t	Kepler-55	Transit	2014	1887.78	\N
633	Kepler-310 b	1.81	1.19	\N	13.930698	f	0	\N	665	\N	\N	\N	f	f	2026-05-09 16:40:58.416349+00	2026-05-09 16:40:58.41635+00	t	Kepler-310	Transit	2014	1964.33	\N
634	Kepler-286 e	3.78	1.77	\N	29.221289	f	0	\N	539	\N	\N	\N	f	f	2026-05-09 16:40:58.416352+00	2026-05-09 16:40:58.416353+00	t	Kepler-286	Transit	2014	4001.44	\N
635	Kepler-368 c	14.3	3.88	\N	72.379334	f	0	\N	575	\N	\N	\N	f	f	2026-05-09 16:40:58.416355+00	2026-05-09 16:40:58.416357+00	t	Kepler-368	Transit	2014	2514.59	\N
636	Kepler-356 b	3.09	1.57	\N	4.612696	f	0	\N	1294	\N	\N	\N	f	f	2026-05-09 16:40:58.416359+00	2026-05-09 16:40:58.41636+00	t	Kepler-356	Transit	2014	2307.75	\N
637	Kepler-354 d	2.07	1.24	\N	24.209842	f	0	\N	451	\N	\N	\N	f	f	2026-05-09 16:40:58.416362+00	2026-05-09 16:40:58.416363+00	t	Kepler-354	Transit	2014	1807.11	\N
638	Kepler-313 c	7.13	2.57	\N	32.273273	f	0	\N	683	\N	\N	\N	f	f	2026-05-09 16:40:58.416365+00	2026-05-09 16:40:58.416366+00	t	Kepler-313	Transit	2014	3520.51	\N
639	Kepler-142 b	4.62	1.99	\N	2.024152	f	0	\N	1597	\N	\N	\N	f	f	2026-05-09 16:40:58.416368+00	2026-05-09 16:40:58.41637+00	t	Kepler-142	Transit	2014	1789.57	\N
640	Kepler-487 b	\N	11.42	\N	15.358768403	f	0	\N	662	\N	\N	\N	f	f	2026-05-09 16:40:58.416372+00	2026-05-09 16:40:58.416373+00	t	Kepler-487	Transit	2016	2845.2	\N
641	Kepler-506 b	7.9	2.73	\N	6.8834055	f	0	\N	1080	\N	\N	\N	f	f	2026-05-09 16:40:58.416375+00	2026-05-09 16:40:58.416376+00	t	Kepler-506	Transit	2016	745.07	\N
642	K2-419 A b	196	10.55	\N	20.35847252	f	0	\N	377	\N	\N	\N	f	f	2026-05-09 16:40:58.416378+00	2026-05-09 16:40:58.41638+00	t	K2-419 A	Transit	2024	876.33	\N
643	TOI-4794 b	308.29355479	14.35870428	\N	3.5658116	f	0	\N	1673	\N	\N	\N	f	f	2026-05-09 16:40:58.416382+00	2026-05-09 16:40:58.416383+00	t	TOI-4794	Transit	2025	1771.05	\N
644	K2-398 c	22.8	5.098	\N	18.787839	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.416385+00	2026-05-09 16:40:58.416386+00	t	K2-398	Transit	2022	1979.74	\N
645	Kepler-299 e	4.16	1.87	\N	38.285489	f	0	\N	534	\N	\N	\N	f	f	2026-05-09 16:40:58.416388+00	2026-05-09 16:40:58.416389+00	t	Kepler-299	Transit	2014	3431.94	\N
646	Kepler-372 b	2.42	1.36	\N	6.849692	f	0	\N	1081	\N	\N	\N	f	f	2026-05-09 16:40:58.416392+00	2026-05-09 16:40:58.416393+00	t	Kepler-372	Transit	2014	4872.61	\N
647	Kepler-378 c	0.271	0.7	\N	28.906009	f	0	\N	414	\N	\N	\N	f	f	2026-05-09 16:40:58.416395+00	2026-05-09 16:40:58.416396+00	t	Kepler-378	Transit	2014	496.06	\N
648	Kepler-357 c	7.61	2.67	\N	16.85837	f	0	\N	576	\N	\N	\N	f	f	2026-05-09 16:40:58.416398+00	2026-05-09 16:40:58.416399+00	t	Kepler-357	Transit	2014	2245.82	\N
649	Kepler-308 c	5.31	2.16	\N	15.38231	f	0	\N	714	\N	\N	\N	f	f	2026-05-09 16:40:58.416401+00	2026-05-09 16:40:58.416402+00	t	Kepler-308	Transit	2014	4357.18	\N
650	Kepler-124 b	0.315	0.73	\N	3.410493	f	0	\N	892	\N	\N	\N	f	f	2026-05-09 16:40:58.416404+00	2026-05-09 16:40:58.416405+00	t	Kepler-124	Transit	2014	1370.01	\N
651	Kepler-235 b	5.6	2.23	\N	3.340222	f	0	\N	731	\N	\N	\N	f	f	2026-05-09 16:40:58.416408+00	2026-05-09 16:40:58.416409+00	t	Kepler-235	Transit	2014	1396.01	\N
652	Kepler-392 c	1.37	1.1	\N	10.423118	f	0	\N	901	\N	\N	\N	f	f	2026-05-09 16:40:58.416411+00	2026-05-09 16:40:58.416412+00	t	Kepler-392	Transit	2014	2222.52	\N
653	Kepler-360 c	5.06	2.1	\N	7.186434	f	0	\N	860	\N	\N	\N	f	f	2026-05-09 16:40:58.416414+00	2026-05-09 16:40:58.416415+00	t	Kepler-360	Transit	2014	2857.27	\N
654	Kepler-363 b	1.65	1.16	\N	3.614568	f	0	\N	1347	\N	\N	\N	f	f	2026-05-09 16:40:58.416418+00	2026-05-09 16:40:58.416419+00	t	Kepler-363	Transit	2014	2487.25	\N
655	Kepler-319 d	5.86	2.29	\N	31.781925	f	0	\N	528	\N	\N	\N	f	f	2026-05-09 16:40:58.416421+00	2026-05-09 16:40:58.416422+00	t	Kepler-319	Transit	2014	1641.99	\N
656	Kepler-319 b	3.29	1.63	\N	4.362705	f	0	\N	1023	\N	\N	\N	f	f	2026-05-09 16:40:58.416424+00	2026-05-09 16:40:58.416425+00	t	Kepler-319	Transit	2014	1641.99	\N
657	Kepler-398 c	1.01	1.01	\N	11.419412	f	0	\N	536	\N	\N	\N	f	f	2026-05-09 16:40:58.416427+00	2026-05-09 16:40:58.416428+00	t	Kepler-398	Transit	2014	578.45	\N
658	Kepler-399 b	0.84	0.96	\N	14.425281	f	0	\N	773	\N	\N	\N	f	f	2026-05-09 16:40:58.41643+00	2026-05-09 16:40:58.416431+00	t	Kepler-399	Transit	2014	2415.31	\N
659	Kepler-379 b	3.39	1.66	\N	20.09838	f	0	\N	775	\N	\N	\N	f	f	2026-05-09 16:40:58.416434+00	2026-05-09 16:40:58.416435+00	t	Kepler-379	Transit	2014	2385.09	\N
660	Kepler-198 b	8.35	2.82	\N	17.790037	f	0	\N	655	\N	\N	\N	f	f	2026-05-09 16:40:58.416437+00	2026-05-09 16:40:58.416438+00	t	Kepler-198	Transit	2014	1615.64	\N
661	Kepler-372 d	3.5	1.69	\N	30.092568	f	0	\N	660	\N	\N	\N	f	f	2026-05-09 16:40:58.41644+00	2026-05-09 16:40:58.416441+00	t	Kepler-372	Transit	2014	4872.61	\N
662	Kepler-146 b	13.3	3.71	\N	31.158799	f	0	\N	639	\N	\N	\N	f	f	2026-05-09 16:40:58.416443+00	2026-05-09 16:40:58.416444+00	t	Kepler-146	Transit	2014	2337.88	\N
663	Kepler-250 b	1.51	1.13	\N	4.148141	f	0	\N	938	\N	\N	\N	f	f	2026-05-09 16:40:58.416447+00	2026-05-09 16:40:58.416448+00	t	Kepler-250	Transit	2014	2480.69	\N
664	Kepler-390 c	0.418	0.79	\N	13.060022	f	0	\N	630	\N	\N	\N	f	f	2026-05-09 16:40:58.41645+00	2026-05-09 16:40:58.416451+00	t	Kepler-390	Transit	2014	1419.68	\N
665	Kepler-373 c	2.07	1.24	\N	16.725948	f	0	\N	729	\N	\N	\N	f	f	2026-05-09 16:40:58.416453+00	2026-05-09 16:40:58.416454+00	t	Kepler-373	Transit	2014	3556.57	\N
666	Kepler-326 b	44.6	1.52	\N	2.248329	f	0	\N	1127	\N	\N	\N	f	f	2026-05-09 16:40:58.416456+00	2026-05-09 16:40:58.416457+00	t	Kepler-326	Transit	2014	1590.58	\N
667	Kepler-325 c	6.99	2.54	\N	12.762172	f	0	\N	721	\N	\N	\N	f	f	2026-05-09 16:40:58.41646+00	2026-05-09 16:40:58.416461+00	t	Kepler-325	Transit	2014	2685.05	\N
668	Kepler-46 d	3.33	1.64	\N	6.766589	f	0	\N	845	\N	\N	\N	f	f	2026-05-09 16:40:58.416463+00	2026-05-09 16:40:58.416464+00	t	Kepler-46	Transit	2014	2534.43	\N
669	Kepler-142 c	8.55	2.86	\N	4.761702	f	0	\N	1201	\N	\N	\N	f	f	2026-05-09 16:40:58.416466+00	2026-05-09 16:40:58.416467+00	t	Kepler-142	Transit	2014	1789.57	\N
670	Kepler-374 d	2.27	1.31	\N	5.028219	f	0	\N	1272	\N	\N	\N	f	f	2026-05-09 16:40:58.416469+00	2026-05-09 16:40:58.41647+00	t	Kepler-374	Transit	2014	4127.86	\N
671	Kepler-375 b	2.7	1.45	\N	12.125934	f	0	\N	851	\N	\N	\N	f	f	2026-05-09 16:40:58.416473+00	2026-05-09 16:40:58.416474+00	t	Kepler-375	Transit	2014	4040.45	\N
672	Kepler-256 b	3.15	1.59	\N	1.620493	f	0	\N	1681	\N	\N	\N	f	f	2026-05-09 16:40:58.416476+00	2026-05-09 16:40:58.416477+00	t	Kepler-256	Transit	2014	3347.76	\N
673	Kepler-327 d	3.64	1.73	\N	13.969457	f	0	\N	387	\N	\N	\N	f	f	2026-05-09 16:40:58.416479+00	2026-05-09 16:40:58.41648+00	t	Kepler-327	Transit	2014	789.26	\N
674	Kepler-403 c	3.71	1.75	\N	54.280749	f	0	\N	604	\N	\N	\N	f	f	2026-05-09 16:40:58.416482+00	2026-05-09 16:40:58.416483+00	t	Kepler-403	Transit	2014	2740.59	\N
675	Kepler-209 c	9.8	3.1	\N	41.749882	f	0	\N	486	\N	\N	\N	f	f	2026-05-09 16:40:58.416486+00	2026-05-09 16:40:58.416487+00	t	Kepler-209	Transit	2014	1881.74	\N
676	Kepler-246 c	2.86	1.5	\N	11.187161	f	0	\N	667	\N	\N	\N	f	f	2026-05-09 16:40:58.416489+00	2026-05-09 16:40:58.41649+00	t	Kepler-246	Transit	2014	2041.99	\N
677	Kepler-250 d	5.39	2.18	\N	17.648312	f	0	\N	579	\N	\N	\N	f	f	2026-05-09 16:40:58.416492+00	2026-05-09 16:40:58.416493+00	t	Kepler-250	Transit	2014	2480.69	\N
678	Kepler-376 b	1.24	1.07	\N	4.920199	f	0	\N	1242	\N	\N	\N	f	f	2026-05-09 16:40:58.416495+00	2026-05-09 16:40:58.416496+00	t	Kepler-376	Transit	2014	3010.64	\N
679	Kepler-380 c	2.15	1.27	\N	7.630004	f	0	\N	1056	\N	\N	\N	f	f	2026-05-09 16:40:58.416499+00	2026-05-09 16:40:58.4165+00	t	Kepler-380	Transit	2014	2653.97	\N
680	Kepler-130 d	3.33	1.64	\N	87.517905	f	0	\N	451	\N	\N	\N	f	f	2026-05-09 16:40:58.416502+00	2026-05-09 16:40:58.416503+00	t	Kepler-130	Transit	2014	1032.82	\N
681	Kepler-252 b	2.04	1.23	\N	6.668391	f	0	\N	587	\N	\N	\N	f	f	2026-05-09 16:40:58.416505+00	2026-05-09 16:40:58.416506+00	t	Kepler-252	Transit	2014	1237.51	\N
682	Kepler-255 b	3.02	1.55	\N	5.714606	f	0	\N	971	\N	\N	\N	f	f	2026-05-09 16:40:58.416509+00	2026-05-09 16:40:58.41651+00	t	Kepler-255	Transit	2014	3432.89	\N
683	Kepler-381 b	0.937	0.99	\N	5.629021	f	0	\N	1576	\N	\N	\N	f	f	2026-05-09 16:40:58.416512+00	2026-05-09 16:40:58.416513+00	t	Kepler-381	Transit	2014	871.89	\N
684	Kepler-383 c	2.07	1.24	\N	31.200751	f	0	\N	406	\N	\N	\N	f	f	2026-05-09 16:40:58.416515+00	2026-05-09 16:40:58.416516+00	t	Kepler-383	Transit	2014	1532.93	\N
685	Kepler-331 d	3.33	1.64	\N	32.134328	f	0	\N	346	\N	\N	\N	f	f	2026-05-09 16:40:58.416519+00	2026-05-09 16:40:58.41652+00	t	Kepler-331	Transit	2014	1892.09	\N
686	Kepler-333 c	1.41	1.11	\N	24.08821	f	0	\N	386	\N	\N	\N	f	f	2026-05-09 16:40:58.416522+00	2026-05-09 16:40:58.416523+00	t	Kepler-333	Transit	2014	1058.09	\N
687	HATS-33 b	378.85336	13.78707	\N	2.5495551	f	0	\N	1429	\N	\N	\N	f	f	2026-05-09 16:40:58.416525+00	2026-05-09 16:40:58.416526+00	t	HATS-33	Transit	2016	810.37	\N
688	TOI-2154 b	292.40213444	16.28664896	\N	3.8240801	f	0	\N	1580	\N	\N	\N	f	f	2026-05-09 16:40:58.416528+00	2026-05-09 16:40:58.416529+00	t	TOI-2154	Transit	2023	966.92	\N
689	TOI-4666 b	155.41809102	12.53164042	\N	2.9089165	f	0	\N	695	\N	\N	\N	f	f	2026-05-09 16:40:58.416532+00	2026-05-09 16:40:58.416533+00	t	TOI-4666	Transit	2025	504.72	\N
690	WASP-194 b	373.13054982	15.47960235	\N	3.183387	f	0	\N	1693	\N	\N	\N	f	f	2026-05-09 16:40:58.416535+00	2026-05-09 16:40:58.416536+00	t	WASP-194	Transit	2025	1555.21	\N
691	HD 147379 b	21.6	4.94	\N	86.58	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.416538+00	2026-05-09 16:40:58.416539+00	t	HD 147379	Radial Velocity	2017	35.11	\N
692	TOI-2338 b	1900.61387386	11.2089807	\N	22.65398	f	0	\N	799	\N	\N	\N	f	f	2026-05-09 16:40:58.416541+00	2026-05-09 16:40:58.416543+00	t	TOI-2338	Transit	2023	1024.12	\N
693	Kepler-1979 b	\N	29.33	\N	18.5084526	f	0	\N	683	\N	\N	\N	f	f	2026-05-09 16:40:58.416545+00	2026-05-09 16:40:58.416546+00	t	Kepler-1979	Transit	2023	3510.32	\N
694	K2-407 c	2.42	1.36	\N	9.22453	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.416548+00	2026-05-09 16:40:58.416549+00	t	K2-407	Transit	2022	712.25	\N
695	K2-55 b	44	4.43	\N	2.849271	f	0	\N	900	\N	\N	\N	f	f	2026-05-09 16:40:58.416551+00	2026-05-09 16:40:58.416552+00	t	K2-55	Transit	2016	520.29	\N
696	K2-60 b	135.39558	7.655747	\N	3.00265	f	0	\N	1400	\N	\N	\N	f	f	2026-05-09 16:40:58.416555+00	2026-05-09 16:40:58.416556+00	t	K2-60	Transit	2016	1604.26	\N
697	Kepler-405 c	19.6	4.66	\N	29.726682	f	0	\N	557	\N	\N	\N	f	f	2026-05-09 16:40:58.416558+00	2026-05-09 16:40:58.416559+00	t	Kepler-405	Transit	2014	3473.82	\N
698	Kepler-256 d	6.71	2.48	\N	5.839172	f	0	\N	1097	\N	\N	\N	f	f	2026-05-09 16:40:58.416561+00	2026-05-09 16:40:58.416563+00	t	Kepler-256	Transit	2014	3347.76	\N
699	Kepler-258 c	12.7	3.61	\N	33.653079	f	0	\N	470	\N	\N	\N	f	f	2026-05-09 16:40:58.416565+00	2026-05-09 16:40:58.416566+00	t	Kepler-258	Transit	2014	1878.62	\N
700	Kepler-387 c	0.64	0.89	\N	11.837549	f	0	\N	826	\N	\N	\N	f	f	2026-05-09 16:40:58.416569+00	2026-05-09 16:40:58.41657+00	t	Kepler-387	Transit	2014	2612.68	\N
701	Kepler-334 d	2.57	1.41	\N	25.09849	f	0	\N	656	\N	\N	\N	f	f	2026-05-09 16:40:58.416572+00	2026-05-09 16:40:58.416573+00	t	Kepler-334	Transit	2014	1391.35	\N
702	Kepler-336 b	1.04	1.02	\N	2.024823	f	0	\N	1625	\N	\N	\N	f	f	2026-05-09 16:40:58.416575+00	2026-05-09 16:40:58.416576+00	t	Kepler-336	Transit	2014	2507.68	\N
703	Kepler-149 c	3.22	1.61	\N	55.328328	f	0	\N	436	\N	\N	\N	f	f	2026-05-09 16:40:58.416579+00	2026-05-09 16:40:58.41658+00	t	Kepler-149	Transit	2014	1862.46	\N
704	Kepler-393 c	2.33	1.33	\N	14.613612	f	0	\N	901	\N	\N	\N	f	f	2026-05-09 16:40:58.416582+00	2026-05-09 16:40:58.416583+00	t	Kepler-393	Transit	2014	2874.75	\N
705	Kepler-292 c	2.76	1.47	\N	3.715335	f	0	\N	1001	\N	\N	\N	f	f	2026-05-09 16:40:58.416585+00	2026-05-09 16:40:58.416587+00	t	Kepler-292	Transit	2014	3445.77	\N
706	Kepler-337 b	2.99	1.54	\N	3.292781	f	0	\N	1458	\N	\N	\N	f	f	2026-05-09 16:40:58.416589+00	2026-05-09 16:40:58.41659+00	t	Kepler-337	Transit	2014	2211.26	\N
707	Kepler-338 c	6.08	2.34	\N	24.310856	f	0	\N	831	\N	\N	\N	f	f	2026-05-09 16:40:58.416592+00	2026-05-09 16:40:58.416594+00	t	Kepler-338	Transit	2014	1802.98	\N
708	K2-405 b	18.9	4.569	\N	3.435471	f	0	\N	969	\N	\N	\N	f	f	2026-05-09 16:40:58.416596+00	2026-05-09 16:40:58.416597+00	t	K2-405	Transit	2022	643.29	\N
709	TOI-1346 c	5.6	2.23	\N	5.502558	f	0	\N	928	\N	\N	\N	f	f	2026-05-09 16:40:58.416599+00	2026-05-09 16:40:58.4166+00	t	TOI-1346	Transit	2025	376.55	\N
710	Kepler-102 d	3	1.154	\N	10.311767	f	0	\N	686	\N	\N	\N	f	f	2026-05-09 16:40:58.416603+00	2026-05-09 16:40:58.416604+00	t	Kepler-102	Transit	2014	351.58	\N
711	HD 20329 b	7.42	1.72	\N	0.926118	f	0	\N	2141	\N	\N	\N	f	f	2026-05-09 16:40:58.416606+00	2026-05-09 16:40:58.416607+00	t	HD 20329	Transit	2022	207.69	\N
712	HIP 111909 c	257.44100967	13.9	\N	893.63	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.416609+00	2026-05-09 16:40:58.416611+00	t	HIP 111909	Radial Velocity	2025	287.27	\N
713	Kepler-158 d	0.0472	0.43	\N	0.645088	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.416613+00	2026-05-09 16:40:58.416614+00	t	Kepler-158	Transit	2024	1027.97	\N
714	Kepler-169 f	7.18	2.58	\N	87.090195	f	0	\N	321	\N	\N	\N	f	f	2026-05-09 16:40:58.416616+00	2026-05-09 16:40:58.416617+00	t	Kepler-169	Transit	2014	1325.92	\N
715	Kepler-265 b	4.12	1.86	\N	6.846262	f	0	\N	1022	\N	\N	\N	f	f	2026-05-09 16:40:58.41662+00	2026-05-09 16:40:58.416621+00	t	Kepler-265	Transit	2014	4175.61	\N
716	Kepler-269 c	3.5	1.69	\N	8.127899	f	0	\N	875	\N	\N	\N	f	f	2026-05-09 16:40:58.416623+00	2026-05-09 16:40:58.416624+00	t	Kepler-269	Transit	2014	7362.38	\N
717	Kepler-395 b	1.08	1.03	\N	7.054346	f	0	\N	576	\N	\N	\N	f	f	2026-05-09 16:40:58.416626+00	2026-05-09 16:40:58.416627+00	t	Kepler-395	Transit	2014	1374.36	\N
718	Kepler-298 d	6.8	2.5	\N	77.473633	f	0	\N	277	\N	\N	\N	f	f	2026-05-09 16:40:58.416629+00	2026-05-09 16:40:58.416631+00	t	Kepler-298	Transit	2014	1690.15	\N
719	Kepler-339 c	7.3	1.15	\N	6.988055	f	0	\N	914	\N	\N	\N	f	f	2026-05-09 16:40:58.416633+00	2026-05-09 16:40:58.416634+00	t	Kepler-339	Transit	2014	2011.2	\N
720	Kepler-339 d	14.7	1.17	\N	10.558345	f	0	\N	796	\N	\N	\N	f	f	2026-05-09 16:40:58.416636+00	2026-05-09 16:40:58.416637+00	t	Kepler-339	Transit	2014	2011.2	\N
721	Kepler-171 d	4.23	1.89	\N	39.595519	f	0	\N	497	\N	\N	\N	f	f	2026-05-09 16:40:58.416639+00	2026-05-09 16:40:58.41664+00	t	Kepler-171	Transit	2014	2817.51	\N
722	Kepler-174 d	5.43	2.19	\N	247.35373	f	0	\N	212	\N	\N	\N	f	f	2026-05-09 16:40:58.416643+00	2026-05-09 16:40:58.416644+00	t	Kepler-174	Transit	2014	1254.91	\N
723	Kepler-272 d	5.69	2.25	\N	10.937304	f	0	\N	777	\N	\N	\N	f	f	2026-05-09 16:40:58.416646+00	2026-05-09 16:40:58.416647+00	t	Kepler-272	Transit	2014	2901.51	\N
724	Kepler-206 d	1.81	1.19	\N	23.44281	f	0	\N	681	\N	\N	\N	f	f	2026-05-09 16:40:58.416649+00	2026-05-09 16:40:58.41665+00	t	Kepler-206	Transit	2014	1938.82	\N
725	Kepler-122 c	29	5.87	\N	12.465988	f	0	\N	897	\N	\N	\N	f	f	2026-05-09 16:40:58.416653+00	2026-05-09 16:40:58.416654+00	t	Kepler-122	Transit	2014	3351.09	\N
726	Kepler-251 c	8.1	2.77	\N	16.514043	f	0	\N	655	\N	\N	\N	f	f	2026-05-09 16:40:58.416656+00	2026-05-09 16:40:58.416657+00	t	Kepler-251	Transit	2014	3015.72	\N
727	Kepler-234 c	12.1	3.51	\N	7.21205	f	0	\N	1025	\N	\N	\N	f	f	2026-05-09 16:40:58.416659+00	2026-05-09 16:40:58.41666+00	t	Kepler-234	Transit	2014	5652.61	\N
728	KOI-1257 b	460.83	10.54	\N	86.647661	f	0	\N	511	\N	\N	\N	f	f	2026-05-09 16:40:58.416663+00	2026-05-09 16:40:58.416664+00	t	KOI-1257	Transit	2014	2139.58	\N
729	OGLE-2008-BLG-355L b	1500	12.9	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.416666+00	2026-05-09 16:40:58.416667+00	t	OGLE-2008-BLG-355L	Microlensing	2014	22178.61	\N
730	Kepler-200 b	5.18	2.13	\N	8.594805	f	0	\N	854	\N	\N	\N	f	f	2026-05-09 16:40:58.416669+00	2026-05-09 16:40:58.416671+00	t	Kepler-200	Transit	2014	2171.91	\N
731	Kepler-188 c	10.3	3.19	\N	5.996553	f	0	\N	1025	\N	\N	\N	f	f	2026-05-09 16:40:58.416673+00	2026-05-09 16:40:58.416674+00	t	Kepler-188	Transit	2014	3158.96	\N
732	Kepler-252 c	5.27	2.15	\N	10.848463	f	0	\N	499	\N	\N	\N	f	f	2026-05-09 16:40:58.416676+00	2026-05-09 16:40:58.416677+00	t	Kepler-252	Transit	2014	1237.51	\N
733	Kepler-1928 b	4.63	1.992	\N	19.57783	f	0	\N	621	\N	\N	\N	f	f	2026-05-09 16:40:58.416679+00	2026-05-09 16:40:58.416681+00	t	Kepler-1928	Transit	2021	1064.45	\N
734	Gaia-5 b	6633.07885409	12.1	\N	358.62	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.416683+00	2026-05-09 16:40:58.416684+00	t	Gaia-5	Astrometry	2025	134.32	\N
735	Kepler-1981 b	62.5	9.23	\N	453.54212	f	0	\N	390	\N	\N	\N	f	f	2026-05-09 16:40:58.416686+00	2026-05-09 16:40:58.416687+00	t	Kepler-1981	Transit	2023	2150.66	\N
736	TOI-3082 b	13	3.6621	\N	1.926907	f	0	\N	1032.78	\N	\N	\N	f	f	2026-05-09 16:40:58.416689+00	2026-05-09 16:40:58.41669+00	t	TOI-3082	Transit	2023	368.71	\N
737	WASP-8 b	807.2882	12.66617	\N	8.15872	f	0	\N	1059	\N	\N	\N	f	f	2026-05-09 16:40:58.416693+00	2026-05-09 16:40:58.416694+00	t	WASP-8	Transit	2010	293.41	\N
738	Kepler-107 b	3.8	1.536	\N	3.1800218	f	0	\N	1592	\N	\N	\N	f	f	2026-05-09 16:40:58.416696+00	2026-05-09 16:40:58.416697+00	t	Kepler-107	Transit	2014	1715.57	\N
739	GJ 508.2 b	587.98255295	\N	\N	5300	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.416699+00	2026-05-09 16:40:58.4167+00	t	GJ 508.2	Radial Velocity	2025	54.26	\N
740	TOI-6086 b	1.76	1.18	\N	1.3888725	f	0	\N	634	\N	\N	\N	f	f	2026-05-09 16:40:58.416702+00	2026-05-09 16:40:58.416704+00	t	TOI-6086	Transit	2024	102.6	\N
741	KELT-12 b	301.9385	19.95202	\N	5.031623	f	0	\N	1800	\N	\N	\N	f	f	2026-05-09 16:40:58.416706+00	2026-05-09 16:40:58.416707+00	t	KELT-12	Transit	2017	1200.35	\N
742	HIP 67851 b	365.50266805	13.7	\N	89.23	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.416709+00	2026-05-09 16:40:58.41671+00	t	HIP 67851	Radial Velocity	2015	209.13	\N
743	TOI-2443 b	4.8	2.363	\N	15.66858	f	0	\N	519	\N	\N	\N	f	f	2026-05-09 16:40:58.416712+00	2026-05-09 16:40:58.416713+00	t	TOI-2443	Transit	2023	78.04	\N
744	Kepler-1983 b	6.04	2.33	\N	7.32851947	f	0	\N	807	\N	\N	\N	f	f	2026-05-09 16:40:58.416716+00	2026-05-09 16:40:58.416717+00	t	Kepler-1983	Transit	2023	1384.3	\N
745	Kepler-421 b	16.1	4.16	\N	704.1984	f	0	\N	185	\N	\N	\N	f	f	2026-05-09 16:40:58.416719+00	2026-05-09 16:40:58.41672+00	t	Kepler-421	Transit	2014	1136.84	\N
746	Kepler-343 c	4.74	2.02	\N	23.22182	f	0	\N	746	\N	\N	\N	f	f	2026-05-09 16:40:58.416722+00	2026-05-09 16:40:58.416724+00	t	Kepler-343	Transit	2014	3024.1	\N
747	TOI-2141 d	14.9	3.97	\N	60.45	f	0	\N	491.4	\N	\N	\N	f	f	2026-05-09 16:40:58.416726+00	2026-05-09 16:40:58.416727+00	t	TOI-2141	Radial Velocity	2025	253.36	\N
748	TOI-2719 b	29.9	5.98	\N	3.37594	f	0	\N	1710	\N	\N	\N	f	f	2026-05-09 16:40:58.416729+00	2026-05-09 16:40:58.41673+00	t	TOI-2719	Transit	2025	1919	\N
749	NGTS-24 b	165.27077164	13.60770257	\N	3.4678796	f	0	\N	1499	\N	\N	\N	f	f	2026-05-09 16:40:58.416732+00	2026-05-09 16:40:58.416733+00	t	NGTS-24	Transit	2022	2227.85	\N
750	Kepler-190 b	3.05	1.56	\N	2.019999	f	0	\N	1166	\N	\N	\N	f	f	2026-05-09 16:40:58.416736+00	2026-05-09 16:40:58.416737+00	t	Kepler-190	Transit	2014	1413.52	\N
751	Kepler-253 c	7.51	2.65	\N	10.281951	f	0	\N	680	\N	\N	\N	f	f	2026-05-09 16:40:58.416739+00	2026-05-09 16:40:58.41674+00	t	Kepler-253	Transit	2014	2735.13	\N
752	Kepler-170 c	8.55	2.86	\N	16.665863	f	0	\N	702	\N	\N	\N	f	f	2026-05-09 16:40:58.416742+00	2026-05-09 16:40:58.416743+00	t	Kepler-170	Transit	2014	2409.17	\N
753	Kepler-205 c	3.33	1.64	\N	20.306546	f	0	\N	389	\N	\N	\N	f	f	2026-05-09 16:40:58.416746+00	2026-05-09 16:40:58.416755+00	t	Kepler-205	Transit	2014	520.94	\N
754	KELT-7 b	441.7837	17.9344	\N	2.73477	f	0	\N	2048	\N	\N	\N	f	f	2026-05-09 16:40:58.416757+00	2026-05-09 16:40:58.416758+00	t	KELT-7	Transit	2015	445.79	\N
755	WASP-127 b	52.346601	14.694999	\N	4.17806203	f	0	\N	1400	\N	\N	\N	f	f	2026-05-09 16:40:58.416761+00	2026-05-09 16:40:58.416762+00	t	WASP-127	Transit	2016	520.24	\N
756	TOI-216.02	18.75187601	8	\N	17.16073	f	0	\N	628	\N	\N	\N	f	f	2026-05-09 16:40:58.416764+00	2026-05-09 16:40:58.416765+00	t	TOI-216	Transit	2019	580.38	\N
757	HATS-59 c	4036.441	12.3	\N	1422	f	0	\N	175.9	\N	\N	\N	f	f	2026-05-09 16:40:58.416767+00	2026-05-09 16:40:58.416768+00	t	HATS-59	Radial Velocity	2018	2096.8	\N
758	Kepler-202 b	3.29	1.63	\N	4.069427	f	0	\N	802	\N	\N	\N	f	f	2026-05-09 16:40:58.41677+00	2026-05-09 16:40:58.416771+00	t	Kepler-202	Transit	2014	929.91	\N
759	Kepler-214 c	5.18	2.13	\N	28.7798	f	0	\N	619	\N	\N	\N	f	f	2026-05-09 16:40:58.416774+00	2026-05-09 16:40:58.416775+00	t	Kepler-214	Transit	2014	3941.4	\N
760	Kepler-192 b	7.95	2.74	\N	9.926746	f	0	\N	803	\N	\N	\N	f	f	2026-05-09 16:40:58.416777+00	2026-05-09 16:40:58.416778+00	t	Kepler-192	Transit	2014	2125.47	\N
761	Kepler-196 c	5.65	2.24	\N	47.427737	f	0	\N	407	\N	\N	\N	f	f	2026-05-09 16:40:58.41678+00	2026-05-09 16:40:58.416781+00	t	Kepler-196	Transit	2014	1471.98	\N
762	Kepler-245 d	21.6	3.03	\N	36.277108	f	0	\N	445	\N	\N	\N	f	f	2026-05-09 16:40:58.416783+00	2026-05-09 16:40:58.416784+00	t	Kepler-245	Transit	2014	2809.92	\N
763	Kepler-101 c	3.78	1.25	\N	6.02976	f	0	\N	1413	\N	\N	\N	f	f	2026-05-09 16:40:58.416786+00	2026-05-09 16:40:58.416787+00	t	Kepler-101	Transit	2014	3026.67	\N
764	Kepler-154 b	5.73	2.26	\N	33.040532	f	0	\N	561	\N	\N	\N	f	f	2026-05-09 16:40:58.41679+00	2026-05-09 16:40:58.416791+00	t	Kepler-154	Transit	2014	2985.02	\N
765	Kepler-359 d	2.7	4.01	\N	77.095691	f	0	\N	464	\N	\N	\N	f	f	2026-05-09 16:40:58.416793+00	2026-05-09 16:40:58.416794+00	t	Kepler-359	Transit	2014	4707.12	\N
766	Kepler-256 c	5.27	2.15	\N	3.38802	f	0	\N	1315	\N	\N	\N	f	f	2026-05-09 16:40:58.416796+00	2026-05-09 16:40:58.416797+00	t	Kepler-256	Transit	2014	3347.76	\N
767	Kepler-254 b	14.3	3.87	\N	5.826662	f	0	\N	1013	\N	\N	\N	f	f	2026-05-09 16:40:58.416799+00	2026-05-09 16:40:58.4168+00	t	Kepler-254	Transit	2014	4531.87	\N
768	Kepler-184 c	8.8	1.97	\N	20.303005	f	0	\N	630	\N	\N	\N	f	f	2026-05-09 16:40:58.416802+00	2026-05-09 16:40:58.416803+00	t	Kepler-184	Transit	2014	1990.61	\N
769	Kepler-248 b	9.38	3.02	\N	6.308205	f	0	\N	819	\N	\N	\N	f	f	2026-05-09 16:40:58.416806+00	2026-05-09 16:40:58.416807+00	t	Kepler-248	Transit	2014	2409.61	\N
770	KIC 10001893 b	\N	\N	\N	0.2197	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.416809+00	2026-05-09 16:40:58.41681+00	t	KIC 10001893	Orbital Brightness Modulation	2014	5456.39	\N
771	KIC 10001893 c	\N	\N	\N	0.32528	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.416812+00	2026-05-09 16:40:58.416813+00	t	KIC 10001893	Orbital Brightness Modulation	2014	5456.39	\N
772	Kepler-172 b	6.12	2.35	\N	2.940309	f	0	\N	1256	\N	\N	\N	f	f	2026-05-09 16:40:58.416815+00	2026-05-09 16:40:58.416816+00	t	Kepler-172	Transit	2014	2702.5	\N
773	Kepler-205 b	2.89	1.51	\N	2.75564	f	0	\N	757	\N	\N	\N	f	f	2026-05-09 16:40:58.416819+00	2026-05-09 16:40:58.41682+00	t	Kepler-205	Transit	2014	520.94	\N
774	Kepler-257 c	25.2	5.41	\N	6.581484	f	0	\N	881	\N	\N	\N	f	f	2026-05-09 16:40:58.416822+00	2026-05-09 16:40:58.416823+00	t	Kepler-257	Transit	2014	2544.85	\N
775	Kepler-217 b	5.6	2.23	\N	5.374943	f	0	\N	1413	\N	\N	\N	f	f	2026-05-09 16:40:58.416825+00	2026-05-09 16:40:58.416826+00	t	Kepler-217	Transit	2014	3602.85	\N
776	Kepler-174 c	2.83	1.49	\N	44.000529	f	0	\N	377	\N	\N	\N	f	f	2026-05-09 16:40:58.416828+00	2026-05-09 16:40:58.416829+00	t	Kepler-174	Transit	2014	1254.91	\N
777	Kepler-251 d	8.1	2.77	\N	30.133001	f	0	\N	536	\N	\N	\N	f	f	2026-05-09 16:40:58.416831+00	2026-05-09 16:40:58.416833+00	t	Kepler-251	Transit	2014	3015.72	\N
778	Kepler-423 b	189.101	13.361	\N	2.6843285	f	0	\N	1605	\N	\N	\N	f	f	2026-05-09 16:40:58.416835+00	2026-05-09 16:40:58.416836+00	t	Kepler-423	Transit	2014	2474.72	\N
779	HS Psc b	464.02947422	13.6	\N	3.986	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.416838+00	2026-05-09 16:40:58.416839+00	t	HS Psc	Radial Velocity	2024	122.83	\N
780	EPIC 212587672 c	5.99	2.32	\N	23.228555	f	0	\N	658	\N	\N	\N	f	f	2026-05-09 16:40:58.416841+00	2026-05-09 16:40:58.416842+00	t	EPIC 212587672	Transit	2021	1043.93	\N
781	TOI-2093 c	15.8	2.3	\N	53.81149	f	0	\N	329	\N	\N	\N	f	f	2026-05-09 16:40:58.416845+00	2026-05-09 16:40:58.416846+00	t	TOI-2093	Transit	2025	270.05	\N
782	TOI-1266 b	4.46	2.52	\N	10.8945	f	0	\N	415	\N	\N	\N	f	f	2026-05-09 16:40:58.416848+00	2026-05-09 16:40:58.416849+00	t	TOI-1266	Transit	2020	117.45	\N
783	HD 222237 b	1649.52943233	12.8	\N	14892	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.416851+00	2026-05-09 16:40:58.416852+00	t	HD 222237	Radial Velocity	2024	37.33	\N
784	WASP-195 b	33.05415433	10.31226224	\N	5.051928	f	0	\N	1522	\N	\N	\N	f	f	2026-05-09 16:40:58.416854+00	2026-05-09 16:40:58.416855+00	t	WASP-195	Transit	2025	1581.37	\N
785	TOI-4308 b	6.43	2.4189	\N	9.151201	f	0	\N	763.05	\N	\N	\N	f	f	2026-05-09 16:40:58.416858+00	2026-05-09 16:40:58.416859+00	t	TOI-4308	Transit	2023	355.29	\N
786	Kepler-1989 b	19.3	4.62	\N	10.161023528	f	0	\N	904	\N	\N	\N	f	f	2026-05-09 16:40:58.416861+00	2026-05-09 16:40:58.416862+00	t	Kepler-1989	Transit	2023	4083.9	\N
787	KELT-11 b	65.15482343	15.13212395	\N	4.73620865	f	0	\N	1712	\N	\N	\N	f	f	2026-05-09 16:40:58.416864+00	2026-05-09 16:40:58.416865+00	t	KELT-11	Transit	2017	323.41	\N
788	HD 167677 b	905.81095995	13.2	\N	1820	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.416867+00	2026-05-09 16:40:58.416868+00	t	HD 167677	Radial Velocity	2023	177.19	\N
789	TOI-2095 b	4.1	1.25	\N	17.66484	f	0	\N	347	\N	\N	\N	f	f	2026-05-09 16:40:58.416871+00	2026-05-09 16:40:58.416872+00	t	TOI-2095	Transit	2023	136.72	\N
790	HIP 29442 d	5.14	1.538	\N	6.429575	f	0	\N	920	\N	\N	\N	f	f	2026-05-09 16:40:58.416874+00	2026-05-09 16:40:58.416875+00	t	TOI-469	Radial Velocity	2023	222.41	\N
791	TOI-1749 b	57	1.39	\N	2.38839	f	0	\N	831	\N	\N	\N	f	f	2026-05-09 16:40:58.416877+00	2026-05-09 16:40:58.416878+00	t	TOI-1749	Transit	2021	324.71	\N
792	TOI-3819 b	352.78953177	13.13692538	\N	3.2443141	f	0	\N	1633	\N	\N	\N	f	f	2026-05-09 16:40:58.41688+00	2026-05-09 16:40:58.416881+00	t	TOI-3819	Transit	2023	1820.41	\N
793	KIC 10001893 d	\N	\N	\N	0.81161	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.416884+00	2026-05-09 16:40:58.416885+00	t	KIC 10001893	Orbital Brightness Modulation	2014	5456.39	\N
794	Kepler-361 b	2.7	1.45	\N	8.486616	f	0	\N	1060	\N	\N	\N	f	f	2026-05-09 16:40:58.416887+00	2026-05-09 16:40:58.416888+00	t	Kepler-361	Transit	2014	3034.29	\N
795	Kepler-362 b	0.615	0.88	\N	10.327186	f	0	\N	838	\N	\N	\N	f	f	2026-05-09 16:40:58.41689+00	2026-05-09 16:40:58.416891+00	t	Kepler-362	Transit	2014	3556.76	\N
796	Kepler-218 c	10	3.14	\N	44.699576	f	0	\N	500	\N	\N	\N	f	f	2026-05-09 16:40:58.416893+00	2026-05-09 16:40:58.416894+00	t	Kepler-218	Transit	2014	2140.82	\N
797	Kepler-193 b	6.3	2.39	\N	11.38848	f	0	\N	979	\N	\N	\N	f	f	2026-05-09 16:40:58.416897+00	2026-05-09 16:40:58.416898+00	t	Kepler-193	Transit	2014	3291.24	\N
798	Kepler-253 d	10.2	3.17	\N	18.119869	f	0	\N	563	\N	\N	\N	f	f	2026-05-09 16:40:58.4169+00	2026-05-09 16:40:58.416901+00	t	Kepler-253	Transit	2014	2735.13	\N
799	Kepler-192 c	8.2	2.79	\N	21.2234	f	0	\N	623	\N	\N	\N	f	f	2026-05-09 16:40:58.416903+00	2026-05-09 16:40:58.416904+00	t	Kepler-192	Transit	2014	2125.47	\N
800	TOI-561 b	2.02	1.397	\N	0.4465697	f	0	\N	2319	\N	\N	\N	f	f	2026-05-09 16:40:58.416907+00	2026-05-09 16:40:58.416908+00	t	TOI-561	Transit	2020	279.84	\N
801	GJ 317 c	454.49462201	13.6	\N	6500	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.41691+00	2026-05-09 16:40:58.416911+00	t	GJ 317	Radial Velocity	2018	49.57	\N
802	TOI-1180 b	10	3.072	\N	9.686760378	f	0	\N	638.18	\N	\N	\N	f	f	2026-05-09 16:40:58.416913+00	2026-05-09 16:40:58.416914+00	t	TOI-1180	Transit	2024	234.91	\N
803	Kepler-1471 b	2.57	1.41	\N	3.63899398	f	0	\N	1238	\N	\N	\N	f	f	2026-05-09 16:40:58.416916+00	2026-05-09 16:40:58.416917+00	t	Kepler-1471	Transit	2016	3192.02	\N
804	L 98-59 b	0.46	0.837	\N	2.253114	f	0	\N	620	\N	\N	\N	f	f	2026-05-09 16:40:58.416919+00	2026-05-09 16:40:58.416921+00	t	L 98-59	Transit	2019	34.64	\N
805	L 98-59 c	2	1.329	\N	3.6906764	f	0	\N	526	\N	\N	\N	f	f	2026-05-09 16:40:58.416923+00	2026-05-09 16:40:58.416924+00	t	L 98-59	Transit	2019	34.64	\N
806	L 98-59 d	1.64	1.627	\N	7.450729	f	0	\N	416	\N	\N	\N	f	f	2026-05-09 16:40:58.416926+00	2026-05-09 16:40:58.416927+00	t	L 98-59	Transit	2019	34.64	\N
807	L 98-59 e	2.82	1.49	\N	12.8278	f	0	\N	347	\N	\N	\N	f	f	2026-05-09 16:40:58.416929+00	2026-05-09 16:40:58.41693+00	t	L 98-59	Radial Velocity	2021	34.64	\N
808	L 98-59 f	2.8	1.48	\N	23.064	f	0	\N	285	\N	\N	\N	f	f	2026-05-09 16:40:58.416932+00	2026-05-09 16:40:58.416933+00	t	L 98-59	Radial Velocity	2025	34.64	\N
809	K2-414 b	1.98	1.219	\N	4.3696	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.416936+00	2026-05-09 16:40:58.416937+00	t	K2-414	Transit	2022	848.12	\N
810	HIP 29442 c	4.5	1.551	\N	3.5379559	f	0	\N	1123	\N	\N	\N	f	f	2026-05-09 16:40:58.416939+00	2026-05-09 16:40:58.41694+00	t	TOI-469	Radial Velocity	2023	222.41	\N
811	TOI-1174 b	32	2.562	\N	8.953487683	f	0	\N	713.83	\N	\N	\N	f	f	2026-05-09 16:40:58.416942+00	2026-05-09 16:40:58.416943+00	t	TOI-1174	Transit	2024	308.67	\N
812	WASP-136 b	479.92089457	16.81347105	\N	5.21536178778	f	0	\N	1630	\N	\N	\N	f	f	2026-05-09 16:40:58.416945+00	2026-05-09 16:40:58.416946+00	t	WASP-136	Transit	2016	898.84	\N
813	TOI-1439 b	38.5	4.2427861	\N	27.644	f	0	\N	748.4	\N	\N	\N	f	f	2026-05-09 16:40:58.416949+00	2026-05-09 16:40:58.41695+00	t	TOI-1439	Transit	2024	751.16	\N
814	HD 118203 c	3747.19691853	12.4	\N	5103	f	0	\N	146	\N	\N	\N	f	f	2026-05-09 16:40:58.416952+00	2026-05-09 16:40:58.416953+00	t	HD 118203	Radial Velocity	2024	300.91	\N
815	K2-331 c	7.85	2.72	\N	22.996591	f	0	\N	673	\N	\N	\N	f	f	2026-05-09 16:40:58.416955+00	2026-05-09 16:40:58.416956+00	t	K2-331	Transit	2021	689.59	\N
816	Kepler-93 b	4.66	1.478	\N	4.72673978	f	0	\N	1133	\N	\N	\N	f	f	2026-05-09 16:40:58.416958+00	2026-05-09 16:40:58.416959+00	t	Kepler-93	Transit	2014	312.82	\N
817	WASP-185 b	311.4734	14.01125	\N	9.38755	f	0	\N	1160	\N	\N	\N	f	f	2026-05-09 16:40:58.416962+00	2026-05-09 16:40:58.416963+00	t	WASP-185	Transit	2019	911.12	\N
818	Kepler-365 c	3.33	1.64	\N	17.784129	f	0	\N	729	\N	\N	\N	f	f	2026-05-09 16:40:58.416965+00	2026-05-09 16:40:58.416966+00	t	Kepler-365	Transit	2014	3388.73	\N
819	Kepler-220 c	3.09	1.57	\N	9.034199	f	0	\N	586	\N	\N	\N	f	f	2026-05-09 16:40:58.416968+00	2026-05-09 16:40:58.416969+00	t	Kepler-220	Transit	2014	558.08	\N
820	Kepler-487 d	8.12	2.77513568	\N	2.418390036	f	0	\N	1226	\N	\N	\N	f	f	2026-05-09 16:40:58.416971+00	2026-05-09 16:40:58.416972+00	t	Kepler-487	Transit	2021	2845.2	\N
821	LP 791-18 b	1.94	1.212	\N	0.9479981	f	0	\N	564.3	\N	\N	\N	f	f	2026-05-09 16:40:58.416974+00	2026-05-09 16:40:58.416975+00	t	LP 791-18	Transit	2019	86.41	\N
822	K2-266 c	0.29013072	0.705	\N	7.814	f	0	\N	664.5	\N	\N	\N	f	f	2026-05-09 16:40:58.416978+00	2026-05-09 16:40:58.416979+00	t	K2-266	Transit	2018	252.96	\N
823	K2-389 b	6.04	2.33	\N	8.58289	f	0	\N	932	\N	\N	\N	f	f	2026-05-09 16:40:58.416981+00	2026-05-09 16:40:58.416982+00	t	K2-389	Transit	2022	845.42	\N
824	HD 191939 f	915.34581216	13.2	\N	2898	f	0	\N	125	\N	\N	\N	f	f	2026-05-09 16:40:58.416984+00	2026-05-09 16:40:58.416985+00	t	HD 191939	Radial Velocity	2022	174.85	\N
825	K2-413 b	0.363	0.7599	\N	0.8094	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.416987+00	2026-05-09 16:40:58.416988+00	t	K2-413	Transit	2022	930.07	\N
826	TOI-5716 b	0.84	0.96	\N	6.7663	f	0	\N	400	\N	\N	\N	f	f	2026-05-09 16:40:58.416991+00	2026-05-09 16:40:58.416992+00	t	TOI-5716	Transit	2025	128.55	\N
827	HD 104985 b	1766.80811451	12.8	\N	199.68	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.416994+00	2026-05-09 16:40:58.416995+00	t	HD 104985	Radial Velocity	2003	328.03	\N
828	K2-332 b	5.48	2.2	\N	17.70632	f	0	\N	266	\N	\N	\N	f	f	2026-05-09 16:40:58.416997+00	2026-05-09 16:40:58.416998+00	t	K2-332	Transit	2021	401.83	\N
829	Kepler-409 b	6	1.199	\N	68.9583216	f	0	\N	438	\N	\N	\N	f	f	2026-05-09 16:40:58.417+00	2026-05-09 16:40:58.417001+00	t	Kepler-409	Transit	2014	222.35	\N
830	Kepler-522 b	38.2	6.91	\N	38.58422849	f	0	\N	761	\N	\N	\N	f	f	2026-05-09 16:40:58.417003+00	2026-05-09 16:40:58.417004+00	t	Kepler-522	Transit	2016	2084.92	\N
831	K2-199 c	12.4	2.85	\N	7.3744897	f	0	\N	694	\N	\N	\N	f	f	2026-05-09 16:40:58.417007+00	2026-05-09 16:40:58.417008+00	t	K2-199	Transit	2018	350.68	\N
832	TOI-3688 A b	311.47183886	13.08088048	\N	3.246075	f	0	\N	1534	\N	\N	\N	f	f	2026-05-09 16:40:58.41701+00	2026-05-09 16:40:58.417011+00	t	TOI-3688 A	Transit	2023	1292.81	\N
833	NGTS-30 b	305.11527072	10.40193409	\N	98.29838	f	0	\N	500	\N	\N	\N	f	f	2026-05-09 16:40:58.417013+00	2026-05-09 16:40:58.417014+00	t	NGTS-30	Transit	2024	777.48	\N
834	K2-389 c	4.82	2.04	\N	20.851337	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417016+00	2026-05-09 16:40:58.417017+00	t	K2-389	Transit	2022	845.42	\N
835	HD 94890 b	676.97450691	13.3	\N	824.61	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417019+00	2026-05-09 16:40:58.41702+00	t	HD 94890	Radial Velocity	2025	201.24	\N
836	Kepler-670 b	\N	13.18	\N	2.816504852	f	0	\N	1219	\N	\N	\N	f	f	2026-05-09 16:40:58.417023+00	2026-05-09 16:40:58.417024+00	t	Kepler-670	Transit	2016	3065.03	\N
837	Kepler-196 b	4.27	1.9	\N	20.739886	f	0	\N	536	\N	\N	\N	f	f	2026-05-09 16:40:58.417026+00	2026-05-09 16:40:58.417027+00	t	Kepler-196	Transit	2014	1471.98	\N
838	Kepler-221 c	9.3	2.93	\N	5.690586	f	0	\N	860	\N	\N	\N	f	f	2026-05-09 16:40:58.417029+00	2026-05-09 16:40:58.41703+00	t	Kepler-221	Transit	2014	1256.45	\N
839	Kepler-163 c	5.73	2.26	\N	21.347262	f	0	\N	648	\N	\N	\N	f	f	2026-05-09 16:40:58.417032+00	2026-05-09 16:40:58.417033+00	t	Kepler-163	Transit	2014	2249.87	\N
840	Kepler-97 c	344	\N	\N	789	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417036+00	2026-05-09 16:40:58.417037+00	t	Kepler-97	Radial Velocity	2014	1307.58	\N
841	Kepler-407 c	4000	12.3	\N	3000	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417039+00	2026-05-09 16:40:58.41704+00	t	Kepler-407	Radial Velocity	2014	1103.61	\N
842	Kepler-427 b	92.17	13.79	\N	10.290994	f	0	\N	1100	\N	\N	\N	f	f	2026-05-09 16:40:58.417042+00	2026-05-09 16:40:58.417043+00	t	Kepler-427	Transit	2014	3319.62	\N
843	TOI-4961 b	572.0911326	12.34108775	\N	7.479182	f	0	\N	919	\N	\N	\N	f	f	2026-05-09 16:40:58.417045+00	2026-05-09 16:40:58.417046+00	t	TOI-4961	Transit	2025	694.95	\N
844	LHS 1678 c	1.4	0.941	\N	3.694284	f	0	\N	510.9	\N	\N	\N	f	f	2026-05-09 16:40:58.417049+00	2026-05-09 16:40:58.41705+00	t	LHS 1678	Transit	2021	64.83	\N
845	HD 24040 b	1589.142035	12.9	\N	3668	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417052+00	2026-05-09 16:40:58.417053+00	t	HD 24040	Radial Velocity	2006	152.06	\N
846	TOI-5489 c	2.18	1.28	\N	4.92126	f	0	\N	536	\N	\N	\N	f	f	2026-05-09 16:40:58.417055+00	2026-05-09 16:40:58.417056+00	t	TOI-5489	Transit	2025	147.07	\N
847	Kepler-763 b	1.98	1.22	\N	1.19655156	f	0	\N	1414	\N	\N	\N	f	f	2026-05-09 16:40:58.417059+00	2026-05-09 16:40:58.41706+00	t	Kepler-763	Transit	2016	3139.12	\N
848	TOI-1759 b	10.8	3.14	\N	18.85019	f	0	\N	443	\N	\N	\N	f	f	2026-05-09 16:40:58.417062+00	2026-05-09 16:40:58.417063+00	t	TOI-1759	Transit	2022	130.68	\N
849	TOI-5110 b	921.7023803	11.98240037	\N	30.158577	f	0	\N	976	\N	\N	\N	f	f	2026-05-09 16:40:58.417065+00	2026-05-09 16:40:58.417067+00	t	TOI-5110	Transit	2024	1279.38	\N
850	WASP-148 c	124.58873554	13.9	\N	34.524	f	0	\N	590	\N	\N	\N	f	f	2026-05-09 16:40:58.417069+00	2026-05-09 16:40:58.41707+00	t	WASP-148	Radial Velocity	2020	803.5	\N
851	Kepler-207 d	11	3.31	\N	5.868075	f	0	\N	1254	\N	\N	\N	f	f	2026-05-09 16:40:58.417072+00	2026-05-09 16:40:58.417073+00	t	Kepler-207	Transit	2014	2855.56	\N
852	Kepler-245 b	146.78	2.57	\N	7.49019	f	0	\N	753	\N	\N	\N	f	f	2026-05-09 16:40:58.417076+00	2026-05-09 16:40:58.417077+00	t	Kepler-245	Transit	2014	2809.92	\N
853	Kepler-208 b	3.29	1.63	\N	4.22864	f	0	\N	1379	\N	\N	\N	f	f	2026-05-09 16:40:58.417079+00	2026-05-09 16:40:58.41708+00	t	Kepler-208	Transit	2014	2528.78	\N
854	Kepler-246 b	6.08	2.34	\N	4.60182	f	0	\N	896	\N	\N	\N	f	f	2026-05-09 16:40:58.417082+00	2026-05-09 16:40:58.417083+00	t	Kepler-246	Transit	2014	2041.99	\N
855	Kepler-179 c	4.66	2	\N	6.40013	f	0	\N	810	\N	\N	\N	f	f	2026-05-09 16:40:58.417086+00	2026-05-09 16:40:58.417087+00	t	Kepler-179	Transit	2014	1975.46	\N
856	Kepler-226 c	45.2	2.27	\N	5.349555	f	0	\N	919	\N	\N	\N	f	f	2026-05-09 16:40:58.417089+00	2026-05-09 16:40:58.41709+00	t	Kepler-226	Transit	2014	3196.78	\N
857	Kepler-113 b	11.7	1.82	\N	4.754	f	0	\N	775	\N	\N	\N	f	f	2026-05-09 16:40:58.417092+00	2026-05-09 16:40:58.417094+00	t	Kepler-113	Transit	2014	855.67	\N
858	Kepler-48 d	7.93	2.04	\N	42.8961	f	0	\N	448	\N	\N	\N	f	f	2026-05-09 16:40:58.417096+00	2026-05-09 16:40:58.417097+00	t	Kepler-48	Transit	2014	1000.44	\N
859	Kepler-199 b	9.85	3.11	\N	23.637604	f	0	\N	595	\N	\N	\N	f	f	2026-05-09 16:40:58.417099+00	2026-05-09 16:40:58.4171+00	t	Kepler-199	Transit	2014	1699.45	\N
860	Kepler-237 c	4.98	2.08	\N	8.103636	f	0	\N	687	\N	\N	\N	f	f	2026-05-09 16:40:58.417103+00	2026-05-09 16:40:58.417104+00	t	Kepler-237	Transit	2014	2145.53	\N
861	TOI-2525 c	208.8132634	10.13291855	\N	49.2519	f	0	\N	399.96	\N	\N	\N	f	f	2026-05-09 16:40:58.417106+00	2026-05-09 16:40:58.417107+00	t	TOI-2525	Transit	2023	1289.61	\N
862	TOI-5489 b	2.54	1.4	\N	3.15222	f	0	\N	624	\N	\N	\N	f	f	2026-05-09 16:40:58.417109+00	2026-05-09 16:40:58.41711+00	t	TOI-5489	Transit	2025	147.07	\N
863	HD 23079 b	845.42356262	13.2	\N	735.74	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417113+00	2026-05-09 16:40:58.417114+00	t	HD 23079	Radial Velocity	2001	109.13	\N
864	55 Cnc f	44.812	7.59	\N	260.58	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417116+00	2026-05-09 16:40:58.417117+00	t	55 Cnc	Radial Velocity	2007	41.05	\N
865	Kepler-247 c	15.7	4.09	\N	9.439452	f	0	\N	686	\N	\N	\N	f	f	2026-05-09 16:40:58.417119+00	2026-05-09 16:40:58.41712+00	t	Kepler-247	Transit	2014	2164.73	\N
866	Kepler-161 b	2.63	2.12	\N	4.921355	f	0	\N	868	\N	\N	\N	f	f	2026-05-09 16:40:58.417122+00	2026-05-09 16:40:58.417123+00	t	Kepler-161	Transit	2014	1417.58	\N
867	Kepler-153 b	8.85	2.92	\N	18.870227	f	0	\N	621	\N	\N	\N	f	f	2026-05-09 16:40:58.417126+00	2026-05-09 16:40:58.417127+00	t	Kepler-153	Transit	2014	1498.26	\N
868	Kepler-106 b	5.3	0.82	\N	6.16486	f	0	\N	1021	\N	\N	\N	f	f	2026-05-09 16:40:58.417129+00	2026-05-09 16:40:58.41713+00	t	Kepler-106	Transit	2014	1449.18	\N
869	Kepler-100 d	3	1.61	\N	35.3331	f	0	\N	670	\N	\N	\N	f	f	2026-05-09 16:40:58.417132+00	2026-05-09 16:40:58.417133+00	t	Kepler-100	Transit	2014	993.62	\N
870	Kepler-274 b	2.99	1.54	\N	11.634788	f	0	\N	961	\N	\N	\N	f	f	2026-05-09 16:40:58.417136+00	2026-05-09 16:40:58.417137+00	t	Kepler-274	Transit	2014	4349.68	\N
871	Kepler-312 b	2.21	1.29	\N	1.772419	f	0	\N	1685	\N	\N	\N	f	f	2026-05-09 16:40:58.417139+00	2026-05-09 16:40:58.41714+00	t	Kepler-312	Transit	2014	2601.81	\N
872	Kepler-211 c	18.3	1.29	\N	6.04045	f	0	\N	841	\N	\N	\N	f	f	2026-05-09 16:40:58.417142+00	2026-05-09 16:40:58.417143+00	t	Kepler-211	Transit	2014	1008.97	\N
873	Kepler-212 c	7.95	2.74	\N	31.805174	f	0	\N	664	\N	\N	\N	f	f	2026-05-09 16:40:58.417146+00	2026-05-09 16:40:58.417147+00	t	Kepler-212	Transit	2014	2241.32	\N
874	Kepler-228 d	15.4	4.04	\N	11.094286	f	0	\N	835	\N	\N	\N	f	f	2026-05-09 16:40:58.417149+00	2026-05-09 16:40:58.41715+00	t	Kepler-228	Transit	2014	5363.99	\N
875	Kepler-864 b	6.35	2.4	\N	5.83376092	f	0	\N	1143	\N	\N	\N	f	f	2026-05-09 16:40:58.417152+00	2026-05-09 16:40:58.417153+00	t	Kepler-864	Transit	2016	6597.81	\N
876	K2-394 b	3.51	1.692	\N	5.095717	f	0	\N	643	\N	\N	\N	f	f	2026-05-09 16:40:58.417155+00	2026-05-09 16:40:58.417156+00	t	K2-394	Transit	2022	319.68	\N
877	Kepler-230 b	16.8	4.26	\N	32.625555	f	0	\N	506	\N	\N	\N	f	f	2026-05-09 16:40:58.417159+00	2026-05-09 16:40:58.41716+00	t	Kepler-230	Transit	2014	2416.01	\N
878	TOI-444 b	8.1	2.77	\N	17.9636	f	0	\N	609	\N	\N	\N	f	f	2026-05-09 16:40:58.417162+00	2026-05-09 16:40:58.417163+00	t	TOI-444	Transit	2023	187.2	\N
879	TOI-2202 b	287.31687993	10.95117414	\N	11.9126075	f	0	\N	652.07	\N	\N	\N	f	f	2026-05-09 16:40:58.417165+00	2026-05-09 16:40:58.417166+00	t	TOI-2202	Transit	2021	769.51	\N
880	Wendelstein-2 b	232.33373	12.9934728	\N	1.7522239	f	0	\N	2470	\N	\N	\N	f	f	2026-05-09 16:40:58.417168+00	2026-05-09 16:40:58.417169+00	t	Wendelstein-2	Transit	2020	1844.55	\N
881	Kepler-166 b	5.77	2.27	\N	7.650254	f	0	\N	772	\N	\N	\N	f	f	2026-05-09 16:40:58.417172+00	2026-05-09 16:40:58.417173+00	t	Kepler-166	Transit	2014	1968.45	\N
882	Kepler-181 c	4.62	1.99	\N	4.302149	f	0	\N	937	\N	\N	\N	f	f	2026-05-09 16:40:58.417175+00	2026-05-09 16:40:58.417176+00	t	Kepler-181	Transit	2014	1987.21	\N
883	Kepler-106 d	8.1	0.95	\N	23.9802	f	0	\N	649	\N	\N	\N	f	f	2026-05-09 16:40:58.417178+00	2026-05-09 16:40:58.417179+00	t	Kepler-106	Transit	2014	1449.18	\N
884	Kepler-131 c	8.25	0.84	\N	25.5169	f	0	\N	615	\N	\N	\N	f	f	2026-05-09 16:40:58.417182+00	2026-05-09 16:40:58.417183+00	t	Kepler-131	Transit	2014	745.85	\N
885	Kepler-320 b	1.55	1.14	\N	8.371554	f	0	\N	1292	\N	\N	\N	f	f	2026-05-09 16:40:58.417185+00	2026-05-09 16:40:58.417186+00	t	Kepler-320	Transit	2014	2696.05	\N
886	Kepler-169 e	5.48	2.2	\N	13.767102	f	0	\N	595	\N	\N	\N	f	f	2026-05-09 16:40:58.417188+00	2026-05-09 16:40:58.417189+00	t	Kepler-169	Transit	2014	1325.92	\N
887	Kepler-249 c	2.89	1.51	\N	7.113702	f	0	\N	429	\N	\N	\N	f	f	2026-05-09 16:40:58.417192+00	2026-05-09 16:40:58.417193+00	t	Kepler-249	Transit	2014	621	\N
888	Kepler-174 b	4.5	1.96	\N	13.98179	f	0	\N	553	\N	\N	\N	f	f	2026-05-09 16:40:58.417195+00	2026-05-09 16:40:58.417196+00	t	Kepler-174	Transit	2014	1254.91	\N
889	Kepler-231 c	24.1	1.93	\N	19.271566	f	0	\N	393	\N	\N	\N	f	f	2026-05-09 16:40:58.417198+00	2026-05-09 16:40:58.417199+00	t	Kepler-231	Transit	2014	1032.67	\N
890	Kepler-197 c	5.3	1.23	\N	10.349695	f	0	\N	930	\N	\N	\N	f	f	2026-05-09 16:40:58.417201+00	2026-05-09 16:40:58.417202+00	t	Kepler-197	Transit	2014	1078.19	\N
891	Kepler-151 b	9.59	3.06	\N	15.228958	f	0	\N	639	\N	\N	\N	f	f	2026-05-09 16:40:58.417204+00	2026-05-09 16:40:58.417206+00	t	Kepler-151	Transit	2014	2119.75	\N
892	Kepler-241 b	6.04	2.33	\N	12.718092	f	0	\N	562	\N	\N	\N	f	f	2026-05-09 16:40:58.417208+00	2026-05-09 16:40:58.417209+00	t	Kepler-241	Transit	2014	1669.92	\N
893	Kepler-232 b	9.69	3.08	\N	4.431222	f	0	\N	1104	\N	\N	\N	f	f	2026-05-09 16:40:58.417211+00	2026-05-09 16:40:58.417212+00	t	Kepler-232	Transit	2014	4400.27	\N
894	Kepler-233 b	6.48	2.43	\N	8.472382	f	0	\N	751	\N	\N	\N	f	f	2026-05-09 16:40:58.417214+00	2026-05-09 16:40:58.417215+00	t	Kepler-233	Transit	2014	2793.26	\N
895	Kepler-143 b	6.39	2.41	\N	16.007583	f	0	\N	838	\N	\N	\N	f	f	2026-05-09 16:40:58.417218+00	2026-05-09 16:40:58.417219+00	t	Kepler-143	Transit	2014	2640.13	\N
896	Kepler-332 d	1.76	1.18	\N	34.21154	f	0	\N	427	\N	\N	\N	f	f	2026-05-09 16:40:58.417221+00	2026-05-09 16:40:58.417222+00	t	Kepler-332	Transit	2014	1122.6	\N
897	HIP 9618 b	8.3	3.82838127	\N	20.772858	f	0	\N	640.88	\N	\N	\N	f	f	2026-05-09 16:40:58.417225+00	2026-05-09 16:40:58.417226+00	t	HIP 9618	Transit	2023	220.31	\N
898	TOI-1453 b	2.32	1.173	\N	4.3135225	f	0	\N	944.2	\N	\N	\N	f	f	2026-05-09 16:40:58.417228+00	2026-05-09 16:40:58.417229+00	t	TOI-1453	Transit	2025	256.82	\N
899	TOI-1450 A b	1.258	1.13	\N	2.0439274	f	0	\N	722	\N	\N	\N	f	f	2026-05-09 16:40:58.417231+00	2026-05-09 16:40:58.417232+00	t	TOI-1450 A	Transit	2024	73.21	\N
900	GJ 3512 c	143.97626837	14.3	\N	2354	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417234+00	2026-05-09 16:40:58.417235+00	t	GJ 3512	Radial Velocity	2020	30.94	\N
901	TOI-1450 A c	1.527	1.13	\N	5.0688	f	0	\N	533	\N	\N	\N	f	f	2026-05-09 16:40:58.417238+00	2026-05-09 16:40:58.417239+00	t	TOI-1450 A	Transit	2024	73.21	\N
902	Kepler-453 b	16	6.204	\N	240.503	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417241+00	2026-05-09 16:40:58.417242+00	t	Kepler-453	Transit	2015	1444.37	\N
903	TOI-1420 b	25.1	11.89	\N	6.9561063	f	0	\N	957	\N	\N	\N	f	f	2026-05-09 16:40:58.417246+00	2026-05-09 16:40:58.417247+00	t	TOI-1420	Transit	2023	658.57	\N
904	KOI-4978 b	0.271	0.7	\N	0.941967	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417249+00	2026-05-09 16:40:58.41725+00	t	KOI-4978	Transit	2024	3053.93	\N
905	Kepler-311 d	4.86	2.05	\N	232.040326	f	0	\N	327	\N	\N	\N	f	f	2026-05-09 16:40:58.417253+00	2026-05-09 16:40:58.417254+00	t	Kepler-311	Transit	2023	2539.63	\N
906	K2-369 b	2.28	1.313	\N	5.761612	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417256+00	2026-05-09 16:40:58.417257+00	t	K2-369	Transit	2022	605.18	\N
907	HD 93083 b	143.34061156	14.3	\N	144.72	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417259+00	2026-05-09 16:40:58.41726+00	t	HD 93083	Radial Velocity	2005	93.01	\N
908	LHS 1678 d	0.907	0.981	\N	4.9652229	f	0	\N	462.95	\N	\N	\N	f	f	2026-05-09 16:40:58.417262+00	2026-05-09 16:40:58.417264+00	t	LHS 1678	Transit	2024	64.83	\N
909	Kepler-1515 b	66.2	9.55	\N	214.3114164	f	0	\N	380	\N	\N	\N	f	f	2026-05-09 16:40:58.417266+00	2026-05-09 16:40:58.417267+00	t	Kepler-1515	Transit	2016	1759.03	\N
910	TOI-5616 b	624	10.78	\N	2.002849	f	0	\N	939	\N	\N	\N	f	f	2026-05-09 16:40:58.417269+00	2026-05-09 16:40:58.41727+00	t	TOI-5616	Transit	2024	1273.36	\N
911	TOI-2194 b	4.61	1.9892	\N	15.337597	f	0	\N	590.88	\N	\N	\N	f	f	2026-05-09 16:40:58.417272+00	2026-05-09 16:40:58.417273+00	t	TOI-2194	Transit	2023	63.83	\N
912	K2-388 b	14.5	3.9	\N	6.33932	f	0	\N	874	\N	\N	\N	f	f	2026-05-09 16:40:58.417276+00	2026-05-09 16:40:58.417277+00	t	K2-388	Transit	2022	947.47	\N
913	K2-397 b	6.42	2.417	\N	3.572326	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417279+00	2026-05-09 16:40:58.41728+00	t	K2-397	Transit	2022	650.21	\N
914	KIC 3558849 b	38.1	6.9	\N	1322.3	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417282+00	2026-05-09 16:40:58.417283+00	t	KIC 3558849	Transit	2015	3965.08	\N
915	HD 215152 c	468.79690033	\N	\N	7.28243	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417285+00	2026-05-09 16:40:58.417287+00	t	HD 215152	Radial Velocity	2018	70.44	\N
916	Kepler-440 b	4.12	1.86	\N	101.11141	f	0	\N	229	\N	\N	\N	f	f	2026-05-09 16:40:58.417289+00	2026-05-09 16:40:58.41729+00	t	Kepler-440	Transit	2015	981.83	\N
917	HD 23472 e	0.72	0.818	\N	7.90754	f	0	\N	723	\N	\N	\N	f	f	2026-05-09 16:40:58.417292+00	2026-05-09 16:40:58.417293+00	t	HD 23472	Transit	2022	127.31	\N
918	HD 73344 c	118.54999581	13.5	\N	65.94	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417295+00	2026-05-09 16:40:58.417296+00	t	HD 73344	Radial Velocity	2025	115	\N
919	TOI-1301.01	6.7	2.477	\N	6.096407209	f	0	\N	737.36	\N	\N	\N	f	f	2026-05-09 16:40:58.417298+00	2026-05-09 16:40:58.417299+00	t	TOI-1301	Transit	2024	296.38	\N
920	TOI-1221 b	1112.3994245	2.91	\N	91.68278	f	0	\N	440	\N	\N	\N	f	f	2026-05-09 16:40:58.417302+00	2026-05-09 16:40:58.417303+00	t	TOI-1221	Transit	2023	451.44	\N
921	Kepler-490 b	\N	11.65	\N	3.268695154	f	0	\N	1597	\N	\N	\N	f	f	2026-05-09 16:40:58.417305+00	2026-05-09 16:40:58.417306+00	t	Kepler-490	Transit	2016	4967.36	\N
922	TOI-697 b	6.16	2.35859364	\N	8.60788713593	f	0	\N	839.8	\N	\N	\N	f	f	2026-05-09 16:40:58.417308+00	2026-05-09 16:40:58.417309+00	t	TOI-697	Transit	2026	305.84	\N
923	EPIC 220674823 c	7.9	2.712	\N	13.340603	f	0	\N	838	\N	\N	\N	f	f	2026-05-09 16:40:58.417311+00	2026-05-09 16:40:58.417312+00	t	EPIC 220674823	Transit	2016	797.74	\N
924	Kepler-949 b	8.8	2.91	\N	8.689307296	f	0	\N	782	\N	\N	\N	f	f	2026-05-09 16:40:58.417314+00	2026-05-09 16:40:58.417316+00	t	Kepler-949	Transit	2016	1585.46	\N
925	TOI-544 b	2.89	2.018	\N	1.548352	f	0	\N	999	\N	\N	\N	f	f	2026-05-09 16:40:58.417318+00	2026-05-09 16:40:58.417319+00	t	TOI-544	Transit	2022	134.1	\N
926	Kepler-109 c	8.2	2.65	\N	21.22265	f	0	\N	859	\N	\N	\N	f	f	2026-05-09 16:40:58.417321+00	2026-05-09 16:40:58.417322+00	t	Kepler-109	Transit	2014	1548.79	\N
927	TOI-2266 b	2.99	1.54	\N	2.326318	f	0	\N	550	\N	\N	\N	f	f	2026-05-09 16:40:58.417324+00	2026-05-09 16:40:58.417325+00	t	TOI-2266	Transit	2024	168.3	\N
928	TOI-1744.01	7.65	2.68	\N	22.341702927	f	0	\N	598	\N	\N	\N	f	f	2026-05-09 16:40:58.417327+00	2026-05-09 16:40:58.417328+00	t	TOI-1744	Transit	2024	373.09	\N
929	HATS-66 b	1694.0339	15.815899	\N	3.1414391	f	0	\N	1998	\N	\N	\N	f	f	2026-05-09 16:40:58.417331+00	2026-05-09 16:40:58.417332+00	t	HATS-66	Transit	2018	4820.52	\N
930	K2-13 b	4.23	1.89	\N	39.91488	f	0	\N	511	\N	\N	\N	f	f	2026-05-09 16:40:58.417334+00	2026-05-09 16:40:58.417335+00	t	K2-13	Transit	2015	1116.74	\N
931	KIC 8540376 b	15.8	4.1	\N	31.8099	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417337+00	2026-05-09 16:40:58.417338+00	t	KOI-7892	Transit	2015	3497.37	\N
932	KIC 8540376 c	6.35	2.4	\N	75.2	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417341+00	2026-05-09 16:40:58.417342+00	t	KOI-7892	Transit	2015	3497.37	\N
933	Kepler-436 b	7.9	2.73	\N	64.00205	f	0	\N	322	\N	\N	\N	f	f	2026-05-09 16:40:58.417344+00	2026-05-09 16:40:58.417345+00	t	Kepler-436	Transit	2015	1920.63	\N
934	Kepler-186 f	1.71	1.17	\N	129.9441	f	0	\N	177	\N	\N	\N	f	f	2026-05-09 16:40:58.417347+00	2026-05-09 16:40:58.417348+00	t	Kepler-186	Transit	2014	579.23	\N
935	Kepler-441 b	3.33	1.64	\N	207.2482	f	0	\N	189	\N	\N	\N	f	f	2026-05-09 16:40:58.41735+00	2026-05-09 16:40:58.417351+00	t	Kepler-441	Transit	2015	874.11	\N
936	TOI-1224 c	8.67	2.884	\N	17.945466	f	0	\N	303.12	\N	\N	\N	f	f	2026-05-09 16:40:58.417354+00	2026-05-09 16:40:58.417355+00	t	TOI-1224	Transit	2024	121.76	\N
937	K2-155 c	7.27	2.6	\N	13.85	f	0	\N	583	\N	\N	\N	f	f	2026-05-09 16:40:58.417357+00	2026-05-09 16:40:58.417358+00	t	K2-155	Transit	2018	237.44	\N
938	TOI-808 b	5.49	2.20344362	\N	9.73944854026	f	0	\N	710.98	\N	\N	\N	f	f	2026-05-09 16:40:58.41736+00	2026-05-09 16:40:58.417361+00	t	TOI-808	Transit	2026	320.24	\N
939	TOI-2088 b	37	3.6831179	\N	124.72997	f	0	\N	300.33	\N	\N	\N	f	f	2026-05-09 16:40:58.417363+00	2026-05-09 16:40:58.417364+00	t	TOI-2088	Transit	2024	412.46	\N
940	WASP-1 b	271.415	16.623	\N	2.5199454	f	0	\N	1812	\N	\N	\N	f	f	2026-05-09 16:40:58.417367+00	2026-05-09 16:40:58.417368+00	t	WASP-1	Transit	2007	1282.03	\N
941	HD 224018 d	4.2	2.4	\N	138.0731	f	0	\N	411	\N	\N	\N	f	f	2026-05-09 16:40:58.41737+00	2026-05-09 16:40:58.417371+00	t	HD 224018	Transit	2025	344.03	\N
942	TOI-1782.01	6.2	2.368	\N	4.987641028	f	0	\N	697.84	\N	\N	\N	f	f	2026-05-09 16:40:58.417373+00	2026-05-09 16:40:58.417374+00	t	TOI-1782	Transit	2024	310.71	\N
943	K2-141 c	8	7	\N	7.7485	f	0	\N	695	\N	\N	\N	f	f	2026-05-09 16:40:58.417377+00	2026-05-09 16:40:58.417378+00	t	K2-141	Transit	2018	201.8	\N
944	TOI-4487 A b	397.28550875	14.60530185	\N	3.9540709	f	0	\N	1639	\N	\N	\N	f	f	2026-05-09 16:40:58.41738+00	2026-05-09 16:40:58.417381+00	t	TOI-4487 A	Transit	2025	1562.76	\N
945	GJ 3512 b	146.51889563	14.3	\N	203.109	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417383+00	2026-05-09 16:40:58.417384+00	t	GJ 3512	Radial Velocity	2019	30.94	\N
946	HD 95338 b	42.9	4.27174254	\N	55.082694	f	0	\N	443	\N	\N	\N	f	f	2026-05-09 16:40:58.417386+00	2026-05-09 16:40:58.417388+00	t	HD 95338	Radial Velocity	2020	120.66	\N
947	HD 215497 b	1588.82420659	\N	\N	3.93404	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.41739+00	2026-05-09 16:40:58.417391+00	t	HD 215497	Radial Velocity	2009	132.25	\N
948	Kepler-435 b	266.97	22.31	\N	8.6001536	f	0	\N	1729	\N	\N	\N	f	f	2026-05-09 16:40:58.417393+00	2026-05-09 16:40:58.417394+00	t	Kepler-435	Transit	2015	4627.4	\N
949	Qatar-5 b	1373.0256	12.408363	\N	2.8792319	f	0	\N	1415	\N	\N	\N	f	f	2026-05-09 16:40:58.417396+00	2026-05-09 16:40:58.417397+00	t	Qatar-5	Transit	2017	1199.14	\N
950	COCONUTS-2 b	2542.627256	12.44196858	\N	402000000	f	0	\N	434	\N	\N	\N	f	f	2026-05-09 16:40:58.4174+00	2026-05-09 16:40:58.417401+00	t	COCONUTS-2 A	Imaging	2021	35.51	\N
951	K2-333 b	31.6	6.18	\N	14.759287	f	0	\N	826	\N	\N	\N	f	f	2026-05-09 16:40:58.417403+00	2026-05-09 16:40:58.417404+00	t	K2-333	Transit	2021	1121.94	\N
952	TOI-2145 b	1805.26535176	12.24020692	\N	10.261128	f	0	\N	1484	\N	\N	\N	f	f	2026-05-09 16:40:58.417406+00	2026-05-09 16:40:58.417407+00	t	TOI-2145	Transit	2023	732.97	\N
953	Kepler-68 c	1.3	0.979	\N	9.605027	f	0	\N	1052	\N	\N	\N	f	f	2026-05-09 16:40:58.41741+00	2026-05-09 16:40:58.417411+00	t	Kepler-68	Transit	2013	470.21	\N
954	HD 28471 b	3.72	1.75	\N	3.1649	f	0	\N	1377	\N	\N	\N	f	f	2026-05-09 16:40:58.417413+00	2026-05-09 16:40:58.417414+00	t	HD 28471	Radial Velocity	2025	142.35	\N
955	TOI-500 e	15.05	3.99	\N	61.3	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417416+00	2026-05-09 16:40:58.417417+00	t	TOI-500	Radial Velocity	2022	154.57	\N
956	HATS-56 b	191.33366	18.920792	\N	4.324799	f	0	\N	1902	\N	\N	\N	f	f	2026-05-09 16:40:58.417419+00	2026-05-09 16:40:58.41742+00	t	HATS-56	Transit	2019	1840.85	\N
957	HAT-P-12 b	67.059	10.749	\N	3.2130598	f	0	\N	963	\N	\N	\N	f	f	2026-05-09 16:40:58.417423+00	2026-05-09 16:40:58.417424+00	t	HAT-P-12	Transit	2009	465.59	\N
958	TOI-2046 b	731.0053361	16.14093221	\N	1.4971842	f	0	\N	1828.82	\N	\N	\N	f	f	2026-05-09 16:40:58.417426+00	2026-05-09 16:40:58.417427+00	t	TOI-2046	Transit	2022	944.77	\N
959	HD 215497 c	111.23994245	13	\N	566	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417429+00	2026-05-09 16:40:58.41743+00	t	HD 215497	Radial Velocity	2009	132.25	\N
960	HAT-P-33 b	292.4036	20.73665	\N	3.47447	f	0	\N	1782	\N	\N	\N	f	f	2026-05-09 16:40:58.417433+00	2026-05-09 16:40:58.417434+00	t	HAT-P-33	Transit	2011	1291.94	\N
961	HD 149026 b	120.7754	8.29466	\N	2.87589	f	0	\N	1626	\N	\N	\N	f	f	2026-05-09 16:40:58.417436+00	2026-05-09 16:40:58.417437+00	t	HD 149026	Radial Velocity	2005	247.44	\N
962	TOI-6383 A b	331	11.29	\N	1.79058695	f	0	\N	745	\N	\N	\N	f	f	2026-05-09 16:40:58.417439+00	2026-05-09 16:40:58.41744+00	t	TOI-6383 A	Transit	2024	558.77	\N
963	HD 100508 b	381.3940884	13.7	\N	5681	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417442+00	2026-05-09 16:40:58.417443+00	t	HD 100508	Radial Velocity	2026	106.83	\N
964	HATS-16 b	1039.3041	14.5717	\N	2.686502	f	0	\N	1592	\N	\N	\N	f	f	2026-05-09 16:40:58.417446+00	2026-05-09 16:40:58.417447+00	t	HATS-16	Transit	2016	2469.14	\N
965	TOI-1799 b	4	1.642	\N	7.094570865	f	0	\N	922.72	\N	\N	\N	f	f	2026-05-09 16:40:58.417449+00	2026-05-09 16:40:58.41745+00	t	TOI-1799	Transit	2024	202.63	\N
966	DMPP-4 b	12.2	3.53	\N	3.4982	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417452+00	2026-05-09 16:40:58.417453+00	t	DMPP-4	Radial Velocity	2023	82.61	\N
967	HD 191939 b	10	3.41	\N	8.8803256	f	0	\N	880	\N	\N	\N	f	f	2026-05-09 16:40:58.417455+00	2026-05-09 16:40:58.417456+00	t	HD 191939	Transit	2020	174.85	\N
968	TOI-333 b	20.1	4.26	\N	3.7852503	f	0	\N	1445	\N	\N	\N	f	f	2026-05-09 16:40:58.417458+00	2026-05-09 16:40:58.417459+00	t	TOI-333	Transit	2025	1148.95	\N
969	Kepler-19 b	6.1	2.209	\N	9.28699	f	0	\N	851	\N	\N	\N	f	f	2026-05-09 16:40:58.417462+00	2026-05-09 16:40:58.417463+00	t	Kepler-19	Transit	2011	712.85	\N
970	Kepler-1999 b	10.8	3.29	\N	8.7396758	f	0	\N	577	\N	\N	\N	f	f	2026-05-09 16:40:58.417465+00	2026-05-09 16:40:58.417466+00	t	Kepler-1999	Transit	2023	2287.19	\N
971	TOI-3353.01	7.59	2.6667555	\N	4.6657965	f	0	\N	1264.36	\N	\N	\N	f	f	2026-05-09 16:40:58.417468+00	2026-05-09 16:40:58.417469+00	t	TOI-3353	Transit	2024	256.87	\N
972	K2-14 b	20.7	4.81	\N	8.36802	f	0	\N	488	\N	\N	\N	f	f	2026-05-09 16:40:58.417471+00	2026-05-09 16:40:58.417472+00	t	K2-14	Transit	2015	1187.36	\N
973	K2-15 b	6.71	2.48	\N	11.8104	f	0	\N	676	\N	\N	\N	f	f	2026-05-09 16:40:58.417475+00	2026-05-09 16:40:58.417476+00	t	K2-15	Transit	2015	1611.18	\N
974	K2-17 b	5.6	2.23	\N	17.96753	f	0	\N	487	\N	\N	\N	f	f	2026-05-09 16:40:58.417478+00	2026-05-09 16:40:58.417479+00	t	K2-17	Transit	2015	408.04	\N
975	KIC 10525077 b	25.9	5.5	\N	854.083	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417481+00	2026-05-09 16:40:58.417482+00	t	KIC 10525077	Transit	2015	4765.63	\N
976	KIC 5437945 b	33.6	6.4	\N	440.7813	f	0	\N	308	\N	\N	\N	f	f	2026-05-09 16:40:58.417484+00	2026-05-09 16:40:58.417485+00	t	KIC 5437945	Transit	2015	4155.26	\N
977	Kepler-442 b	2.36	1.34	\N	112.3053	f	0	\N	241	\N	\N	\N	f	f	2026-05-09 16:40:58.417487+00	2026-05-09 16:40:58.417488+00	t	Kepler-442	Transit	2015	1193.62	\N
978	HD 67087 b	973	13.1	\N	352.2	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417491+00	2026-05-09 16:40:58.417492+00	t	HD 67087	Radial Velocity	2015	249.58	\N
979	TOI-1411 b	2	1.19880592	\N	1.4520527	f	0	\N	976.4	\N	\N	\N	f	f	2026-05-09 16:40:58.417494+00	2026-05-09 16:40:58.417495+00	t	TOI-1411	Transit	2022	105.93	\N
980	K2-285 c	15.68	3.53	\N	7.138048	f	0	\N	741.4	\N	\N	\N	f	f	2026-05-09 16:40:58.417497+00	2026-05-09 16:40:58.417498+00	t	K2-285	Transit	2018	505.41	\N
981	Kepler-785 b	\N	13.02	\N	1.973760926	f	0	\N	753	\N	\N	\N	f	f	2026-05-09 16:40:58.417501+00	2026-05-09 16:40:58.417502+00	t	Kepler-785	Transit	2016	2094.09	\N
982	TOI-1036 b	32.5	6.28499593	\N	3.77952125496	f	0	\N	1294	\N	\N	\N	f	f	2026-05-09 16:40:58.417504+00	2026-05-09 16:40:58.417505+00	t	TOI-1036	Transit	2026	600.18	\N
983	WASP-62 b	165.2716	14.79588	\N	4.41195	f	0	\N	1475.3	\N	\N	\N	f	f	2026-05-09 16:40:58.417507+00	2026-05-09 16:40:58.417508+00	t	WASP-62	Transit	2012	572.83	\N
984	TOI-938 b	20.8	4.82401567	\N	8.80733882211	f	0	\N	1073	\N	\N	\N	f	f	2026-05-09 16:40:58.417511+00	2026-05-09 16:40:58.417512+00	t	TOI-938	Transit	2026	701.35	\N
985	K2-372 b	8.98	2.945	\N	9.844077	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417514+00	2026-05-09 16:40:58.417515+00	t	K2-372	Transit	2022	1512.97	\N
986	HD 33142 d	63.5656814	9.32	\N	89.9	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417517+00	2026-05-09 16:40:58.417518+00	t	HD 33142	Radial Velocity	2022	395.87	\N
987	nu Oph c	7838.32346	12	\N	3180.6	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.41752+00	2026-05-09 16:40:58.417521+00	t	nu Oph	Radial Velocity	2012	150.72	\N
988	HD 32963 b	657.90480249	13.4	\N	2372	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417524+00	2026-05-09 16:40:58.417525+00	t	HD 32963	Radial Velocity	2015	124.2	\N
989	Kepler-437 b	5.22	2.14	\N	66.65062	f	0	\N	308	\N	\N	\N	f	f	2026-05-09 16:40:58.417527+00	2026-05-09 16:40:58.417528+00	t	Kepler-437	Transit	2015	991.51	\N
990	HIP 78530 b	7300	12	\N	\N	f	0	\N	2700	\N	\N	\N	f	f	2026-05-09 16:40:58.41753+00	2026-05-09 16:40:58.417531+00	t	HIP 78530	Imaging	2010	446.05	\N
991	1RXS J160929.1-210524 b	3000	18.647	\N	\N	f	0	\N	1700	\N	\N	\N	f	f	2026-05-09 16:40:58.417533+00	2026-05-09 16:40:58.417534+00	t	1RXS J160929.1-210524	Imaging	2008	453.8	\N
992	OGLE-2012-BLG-0563L b	120	13.6	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417537+00	2026-05-09 16:40:58.417538+00	t	OGLE-2012-BLG-0563L	Microlensing	2015	4240.03	\N
993	Kepler-296 c	4.66	2	\N	5.8416366	f	0	\N	606	\N	\N	\N	f	f	2026-05-09 16:40:58.41754+00	2026-05-09 16:40:58.417541+00	t	Kepler-296	Transit	2014	544.68	\N
994	OGLE-2016-BLG-1266L b	3813.940884	12.4	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417543+00	2026-05-09 16:40:58.417544+00	t	OGLE-2016-BLG-1266L	Microlensing	2018	10045.6	\N
995	TOI-5218 b	657	9.86	\N	4.291452	f	0	\N	783	\N	\N	\N	f	f	2026-05-09 16:40:58.417546+00	2026-05-09 16:40:58.417547+00	t	TOI-5218	Transit	2024	1231.18	\N
996	TOI-1516 b	1004.33776612	15.24421375	\N	2.056014	f	0	\N	1839	\N	\N	\N	f	f	2026-05-09 16:40:58.417549+00	2026-05-09 16:40:58.417551+00	t	TOI-1516	Transit	2022	805.78	\N
997	TYC 8998-760-1 c	1906.98	12.3299	\N	\N	f	0	\N	1240	\N	\N	\N	f	f	2026-05-09 16:40:58.417553+00	2026-05-09 16:40:58.417554+00	t	TYC 8998-760-1	Imaging	2020	308.6	\N
998	TOI-332 b	57.2	3.2	\N	0.777038	f	0	\N	1871	\N	\N	\N	f	f	2026-05-09 16:40:58.417556+00	2026-05-09 16:40:58.417558+00	t	TOI-332	Transit	2023	726.85	\N
999	Kepler-731 b	\N	13.88	\N	3.855603551	f	0	\N	1212	\N	\N	\N	f	f	2026-05-09 16:40:58.41756+00	2026-05-09 16:40:58.417561+00	t	Kepler-731	Transit	2016	4100.3	\N
1000	K2-265 b	7.3418362	1.70824866	\N	2.36902	f	0	\N	1366	\N	\N	\N	f	f	2026-05-09 16:40:58.417563+00	2026-05-09 16:40:58.417564+00	t	K2-265	Transit	2018	452.28	\N
1001	KMT-2022-BLG-1818L b	1271.313628	13	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417567+00	2026-05-09 16:40:58.417568+00	t	KMT-2022-BLG-1818L	Microlensing	2026	17286.27	\N
1002	WASP-2 b	295.89973	12.116929	\N	2.152175	f	0	\N	1311	\N	\N	\N	f	f	2026-05-09 16:40:58.41757+00	2026-05-09 16:40:58.417571+00	t	WASP-2	Transit	2007	499.81	\N
1003	HD 106315 c	15.2	4.35	\N	21.05704	f	0	\N	886	\N	\N	\N	f	f	2026-05-09 16:40:58.417573+00	2026-05-09 16:40:58.417575+00	t	HD 106315	Transit	2017	356.66	\N
1004	WASP-28 b	282.54945382	13.66374747	\N	3.40883495	f	0	\N	1456	\N	\N	\N	f	f	2026-05-09 16:40:58.417577+00	2026-05-09 16:40:58.417578+00	t	WASP-28	Transit	2014	1136.63	\N
1005	TOI-2141 c	6.14	2.35	\N	5.4624	f	0	\N	1095	\N	\N	\N	f	f	2026-05-09 16:40:58.41758+00	2026-05-09 16:40:58.417581+00	t	TOI-2141	Radial Velocity	2025	253.36	\N
1006	Kepler-856 b	63.3	9.3	\N	8.027680595	f	0	\N	824	\N	\N	\N	f	f	2026-05-09 16:40:58.417583+00	2026-05-09 16:40:58.417585+00	t	Kepler-856	Transit	2016	4406.92	\N
1007	HD 113538 b	114.41	13.2	\N	663.2	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:40:58.417587+00	2026-05-09 16:40:58.417588+00	t	HD 113538	Radial Velocity	2010	53.1	\N
1008	Kepler-79 e	4.1	3.49	\N	81.0659	f	0	\N	511	\N	\N	\N	f	f	2026-05-09 16:40:58.41759+00	2026-05-09 16:40:58.417591+00	t	Kepler-79	Transit	2014	3329.14	\N
1009	Kepler-79 c	5.9	3.72	\N	27.4029	f	0	\N	734	\N	\N	\N	f	f	2026-05-09 16:45:37.098018+00	2026-05-09 16:45:37.098023+00	t	Kepler-79	Transit	2012	3329.14	\N
1010	Kepler-296 d	5.02	2.09	\N	19.850291	f	0	\N	403	\N	\N	\N	f	f	2026-05-09 16:45:37.098025+00	2026-05-09 16:45:37.098026+00	t	Kepler-296	Transit	2014	544.68	\N
1011	BD+15 2375 b	337.21763	13.8	\N	153.22	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098027+00	2026-05-09 16:45:37.098028+00	t	BD+15 2375	Radial Velocity	2016	2505.02	\N
1012	HD 5583 b	1837.0574	12.8	\N	139.35	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098029+00	2026-05-09 16:45:37.09803+00	t	HD 5583	Radial Velocity	2016	714.99	\N
1013	HD 113538 c	295.57	13.8	\N	1818	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098031+00	2026-05-09 16:45:37.098032+00	t	HD 113538	Radial Velocity	2010	53.1	\N
1014	HD 30669 b	149.37	14.3	\N	1684	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098033+00	2026-05-09 16:45:37.098034+00	t	HD 30669	Radial Velocity	2014	189.45	\N
1015	Kepler-79 b	10.9	3.47	\N	13.4845	f	0	\N	929	\N	\N	\N	f	f	2026-05-09 16:45:37.098035+00	2026-05-09 16:45:37.098036+00	t	Kepler-79	Transit	2012	3329.14	\N
1016	Kepler-296 e	2.96	1.53	\N	34.14211	f	0	\N	337	\N	\N	\N	f	f	2026-05-09 16:45:37.098037+00	2026-05-09 16:45:37.098038+00	t	Kepler-296	Transit	2014	544.68	\N
1017	Kepler-296 f	3.89	1.8	\N	63.33627	f	0	\N	274	\N	\N	\N	f	f	2026-05-09 16:45:37.098039+00	2026-05-09 16:45:37.09804+00	t	Kepler-296	Transit	2014	544.68	\N
1018	WASP-180 A b	286.047	13.89916	\N	3.409264	f	0	\N	1540	\N	\N	\N	f	f	2026-05-09 16:45:37.098041+00	2026-05-09 16:45:37.098042+00	t	WASP-180 A	Transit	2019	828.39	\N
1019	GJ 1137 c	5.12	2.11	\N	9.6412	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098043+00	2026-05-09 16:45:37.098043+00	t	HD 93083	Radial Velocity	2026	93.01	\N
1020	Kepler-1869 b	1.46	1.11955354	\N	8.167360306	f	0	\N	865	\N	\N	\N	f	f	2026-05-09 16:45:37.098045+00	2026-05-09 16:45:37.098045+00	t	Kepler-1869	Transit	2021	368.64	\N
1021	TOI-421 b	6.7	2.64	\N	5.197576	f	0	\N	922	\N	\N	\N	f	f	2026-05-09 16:45:37.098047+00	2026-05-09 16:45:37.098047+00	t	TOI-421	Transit	2020	243.95	\N
1022	HD 12484 b	947.1334	13.2	\N	58.83	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098049+00	2026-05-09 16:45:37.098049+00	t	HD 12484	Radial Velocity	2016	157.65	\N
1023	HIP 65407 b	136.03124	14.3	\N	28.125	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098051+00	2026-05-09 16:45:37.098051+00	t	HIP 65407	Radial Velocity	2016	201.5	\N
1024	HD 108341 b	715.11391575	13.3	\N	1129	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098053+00	2026-05-09 16:45:37.098053+00	t	HD 108341	Radial Velocity	2014	159.52	\N
1025	HD 103720 b	197.046	14.1	\N	4.5557	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098055+00	2026-05-09 16:45:37.098055+00	t	HD 103720	Radial Velocity	2014	148.52	\N
1026	TOI-521 b	5.3	1.98	\N	1.54285047	f	0	\N	794	\N	\N	\N	f	f	2026-05-09 16:45:37.098056+00	2026-05-09 16:45:37.098057+00	t	TOI-521	Transit	2025	198.77	\N
1027	TOI-4641 b	1229.99593509	8.18255591	\N	22.09341	f	0	\N	950.11	\N	\N	\N	f	f	2026-05-09 16:45:37.098058+00	2026-05-09 16:45:37.098059+00	t	TOI-4641	Transit	2023	281.64	\N
1028	TOI-5542 b	419.53349724	11.30986153	\N	75.12375	f	0	\N	441	\N	\N	\N	f	f	2026-05-09 16:45:37.09806+00	2026-05-09 16:45:37.098061+00	t	TOI-5542	Transit	2022	1137.79	\N
1029	K2-339 b	4.35	1.92	\N	19.507428	f	0	\N	508	\N	\N	\N	f	f	2026-05-09 16:45:37.098062+00	2026-05-09 16:45:37.098063+00	t	K2-339	Transit	2021	1175.34	\N
1030	Kepler-1980 b	5.52	2.21	\N	33.0257179	f	0	\N	564	\N	\N	\N	f	f	2026-05-09 16:45:37.098064+00	2026-05-09 16:45:37.098065+00	t	Kepler-1980	Transit	2023	5575.31	\N
1031	TOI-1789 b	222.4798849	16.14093221	\N	3.208664	f	0	\N	1927	\N	\N	\N	f	f	2026-05-09 16:45:37.098066+00	2026-05-09 16:45:37.098066+00	t	TOI-1789	Transit	2021	747.12	\N
1032	CoRoT-28 b	153.82972	10.704595	\N	5.20851	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098068+00	2026-05-09 16:45:37.098068+00	t	CoRoT-28	Transit	2015	2498.95	\N
1033	WASP-98 b	293.03926	12.823096	\N	2.96264036	f	0	\N	1171	\N	\N	\N	f	f	2026-05-09 16:45:37.09807+00	2026-05-09 16:45:37.09807+00	t	WASP-98	Transit	2014	918.92	\N
1034	HIP 66074 b	1589.142035	12.9	\N	310.9	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098071+00	2026-05-09 16:45:37.098072+00	t	HIP 66074	Astrometry	2023	115.6	\N
1035	TOI-3135 b	327.36325921	13.65253849	\N	3.7065585	f	0	\N	1292	\N	\N	\N	f	f	2026-05-09 16:45:37.098073+00	2026-05-09 16:45:37.098074+00	t	TOI-3135	Transit	2025	723	\N
1036	Kepler-1814 c	3.75	1.76	\N	0.626281766	f	0	\N	1711	\N	\N	\N	f	f	2026-05-09 16:45:37.098075+00	2026-05-09 16:45:37.098076+00	t	Kepler-1814	Transit	2023	2369.02	\N
1037	HD 94771 b	169	14.2	\N	2164	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098077+00	2026-05-09 16:45:37.098078+00	t	HD 94771	Radial Velocity	2023	188.46	\N
1038	TOI-4087 b	232.01473711	13.04725353	\N	3.1774835	f	0	\N	1458	\N	\N	\N	f	f	2026-05-09 16:45:37.098079+00	2026-05-09 16:45:37.09808+00	t	TOI-4087	Transit	2023	983.93	\N
1039	TOI-286 c	3.72	1.88	\N	39.361826	f	0	\N	475	\N	\N	\N	f	f	2026-05-09 16:45:37.098081+00	2026-05-09 16:45:37.098082+00	t	TOI-286	Transit	2024	193.18	\N
1040	Kepler-1894 b	1.87	1.20117759	\N	2.762660027	f	0	\N	1231	\N	\N	\N	f	f	2026-05-09 16:45:37.098083+00	2026-05-09 16:45:37.098084+00	t	Kepler-1894	Transit	2021	3050.18	\N
1041	TOI-2019 b	34.4	5.33275337	\N	15.3444	f	0	\N	917.46	\N	\N	\N	f	f	2026-05-09 16:45:37.098085+00	2026-05-09 16:45:37.098086+00	t	TOI-2019	Transit	2024	645.81	\N
1042	NGTS-10 b	687.14846	13.506845	\N	0.7668944	f	0	\N	1332	\N	\N	\N	f	f	2026-05-09 16:45:37.098087+00	2026-05-09 16:45:37.098088+00	t	NGTS-10	Transit	2020	1059.02	\N
1043	TOI-1105 b	9.58	3.05823658	\N	10.86818410933	f	0	\N	594	\N	\N	\N	f	f	2026-05-09 16:45:37.098089+00	2026-05-09 16:45:37.09809+00	t	TOI-1105	Transit	2026	259.37	\N
1044	TOI-2076 e	4.7	1.301	\N	3.0223753	f	0	\N	1110	\N	\N	\N	f	f	2026-05-09 16:45:37.098091+00	2026-05-09 16:45:37.098092+00	t	TOI-2076	Transit	2025	136.69	\N
1045	TOI-1117 b	8.9	2.46	\N	2.22816	f	0	\N	1538	\N	\N	\N	f	f	2026-05-09 16:45:37.098093+00	2026-05-09 16:45:37.098093+00	t	TOI-1117	Transit	2025	546.63	\N
1046	SPECULOOS-3 b	0.894	0.977	\N	0.71912603	f	0	\N	553	\N	\N	\N	f	f	2026-05-09 16:45:37.098095+00	2026-05-09 16:45:37.098095+00	t	SPECULOOS-3	Transit	2024	\N	\N
1047	TOI-4600 b	959.84178914	6.8	\N	82.6869	f	0	\N	347	\N	\N	\N	f	f	2026-05-09 16:45:37.098097+00	2026-05-09 16:45:37.098097+00	t	TOI-4600	Transit	2023	704.68	\N
1048	K2-140 b	295.58041851	13.56286665	\N	6.569188	f	0	\N	962	\N	\N	\N	f	f	2026-05-09 16:45:37.098099+00	2026-05-09 16:45:37.098099+00	t	K2-140	Transit	2017	1134.75	\N
1049	Kepler-434 b	908.96	12.67	\N	12.8747099	f	0	\N	1000	\N	\N	\N	f	f	2026-05-09 16:45:37.098101+00	2026-05-09 16:45:37.098101+00	t	Kepler-434	Transit	2015	3987.39	\N
1050	Kepler-433 b	896.24	16.25	\N	5.33408384	f	0	\N	1776	\N	\N	\N	f	f	2026-05-09 16:45:37.098103+00	2026-05-09 16:45:37.098103+00	t	Kepler-433	Transit	2015	6126.22	\N
1051	HATS-43 b	82.95363	13.22662	\N	4.3888497	f	0	\N	1003	\N	\N	\N	f	f	2026-05-09 16:45:37.098105+00	2026-05-09 16:45:37.098105+00	t	HATS-43	Transit	2018	1181.58	\N
1052	2M0437 b	1271.313628	13	\N	\N	f	0	\N	1450	\N	\N	\N	f	f	2026-05-09 16:45:37.098107+00	2026-05-09 16:45:37.098107+00	t	2MASS J04372171+2651014	Imaging	2021	419.06	\N
1053	Kepler-1518 b	9.53	3.05	\N	5.11177904	f	0	\N	1351	\N	\N	\N	f	f	2026-05-09 16:45:37.098108+00	2026-05-09 16:45:37.098109+00	t	Kepler-1518	Transit	2016	2946.85	\N
1054	TOI-4773 b	1687.66884117	15.22179579	\N	1.7452851	f	0	\N	2255	\N	\N	\N	f	f	2026-05-09 16:45:37.09811+00	2026-05-09 16:45:37.098111+00	t	TOI-4773	Transit	2025	1607.58	\N
1055	Kepler-685 b	78.8	10.58	\N	1.6255222	f	0	\N	1579	\N	\N	\N	f	f	2026-05-09 16:45:37.098112+00	2026-05-09 16:45:37.098113+00	t	Kepler-685	Transit	2016	3061.68	\N
1056	TOI-1806.01	11.5	3.4095367	\N	15.1454693	f	0	\N	337.47	\N	\N	\N	f	f	2026-05-09 16:45:37.098114+00	2026-05-09 16:45:37.098115+00	t	TOI-1806	Transit	2024	181.09	\N
1057	K2-378 b	8.65	2.88	\N	2.060438	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098116+00	2026-05-09 16:45:37.098116+00	t	K2-378	Transit	2022	2243.87	\N
1058	TOI-762 A b	79.77493016	8.33948164	\N	3.4716826	f	0	\N	555.4	\N	\N	\N	f	f	2026-05-09 16:45:37.098118+00	2026-05-09 16:45:37.098118+00	t	TOI-762 A	Transit	2024	321.09	\N
1059	HD 207897 b	14.8	2.34302132	\N	16.20166	f	0	\N	581.75	\N	\N	\N	f	f	2026-05-09 16:45:37.098119+00	2026-05-09 16:45:37.09812+00	t	HD 207897	Transit	2021	92.28	\N
1060	TOI-1736 b	12.3	3.18175535	\N	7.073076	f	0	\N	1099.79	\N	\N	\N	f	f	2026-05-09 16:45:37.098122+00	2026-05-09 16:45:37.098122+00	t	TOI-1736	Transit	2023	290.11	\N
1061	NGTS-21 b	750.07504052	14.90794433	\N	1.5433897	f	0	\N	1357	\N	\N	\N	f	f	2026-05-09 16:45:37.098123+00	2026-05-09 16:45:37.098124+00	t	NGTS-21	Transit	2022	1933.75	\N
1062	HD 75302 b	1716.2733978	12.8	\N	4356	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098125+00	2026-05-09 16:45:37.098126+00	t	HD 75302	Radial Velocity	2023	98.92	\N
1063	TOI-4495 b	7.7	2.483	\N	2.56699	f	0	\N	1735	\N	\N	\N	f	f	2026-05-09 16:45:37.098127+00	2026-05-09 16:45:37.098128+00	t	TOI-4495	Transit	2026	431.22	\N
1064	kap CrB b	635.66	13.4	\N	1253.68	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098129+00	2026-05-09 16:45:37.09813+00	t	kap CrB	Radial Velocity	2007	98.06	\N
1065	TOI-244 b	2.68	1.52	\N	7.397225	f	0	\N	458	\N	\N	\N	f	f	2026-05-09 16:45:37.098131+00	2026-05-09 16:45:37.098132+00	t	TOI-244	Transit	2023	71.86	\N
1066	TOI-2295 b	278.09985612	16.47720163	\N	30.033302	f	0	\N	747	\N	\N	\N	f	f	2026-05-09 16:45:37.098133+00	2026-05-09 16:45:37.098133+00	t	TOI-2295	Transit	2024	411.87	\N
1067	HIP 109384 b	495.8148	13.5	\N	499.48	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098135+00	2026-05-09 16:45:37.098135+00	t	HIP 109384	Radial Velocity	2016	192.3	\N
1068	HD 220842 b	1010.6994	13.1	\N	218.47	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098137+00	2026-05-09 16:45:37.098137+00	t	HD 220842	Radial Velocity	2016	210.86	\N
1069	Kepler-445 d	2.1	1.25	\N	8.15275	f	0	\N	305	\N	\N	\N	f	f	2026-05-09 16:45:37.098138+00	2026-05-09 16:45:37.098139+00	t	Kepler-445	Transit	2015	414.87	\N
1070	Kepler-445 c	6.85	2.51	\N	4.871229	f	0	\N	341	\N	\N	\N	f	f	2026-05-09 16:45:37.09814+00	2026-05-09 16:45:37.098141+00	t	Kepler-445	Transit	2015	414.87	\N
1071	Kepler-432 b	1719.4603	12.834305	\N	52.501129	f	0	\N	812	\N	\N	\N	f	f	2026-05-09 16:45:37.098142+00	2026-05-09 16:45:37.098143+00	t	Kepler-432	Transit	2015	2765.88	\N
1072	TOI-500 b	1.42	1.166	\N	0.548177	f	0	\N	1617	\N	\N	\N	f	f	2026-05-09 16:45:37.098144+00	2026-05-09 16:45:37.098145+00	t	TOI-500	Transit	2022	154.57	\N
1073	TIC 231949697 b	2.95	1.52831855	\N	0.90720448719	f	0	\N	982.91	\N	\N	\N	f	f	2026-05-09 16:45:37.098146+00	2026-05-09 16:45:37.098146+00	t	TIC 231949697	Transit	2026	163.86	\N
1074	Wolf 327 b	2.53	1.24	\N	0.5734745	f	0	\N	996	\N	\N	\N	f	f	2026-05-09 16:45:37.098148+00	2026-05-09 16:45:37.098148+00	t	Wolf 327	Transit	2024	93.06	\N
1075	Kepler-1982 b	0.381	0.77	\N	3.82315697	f	0	\N	1282	\N	\N	\N	f	f	2026-05-09 16:45:37.09815+00	2026-05-09 16:45:37.09815+00	t	Kepler-1982	Transit	2023	1822.74	\N
1076	TOI-4559 b	2.59	1.415	\N	3.965991	f	0	\N	554.16	\N	\N	\N	f	f	2026-05-09 16:45:37.098151+00	2026-05-09 16:45:37.098152+00	t	TOI-4559	Transit	2024	103.18	\N
1077	GJ 3929 c	5.71	2.26	\N	15.04	f	0	\N	317	\N	\N	\N	f	f	2026-05-09 16:45:37.098153+00	2026-05-09 16:45:37.098154+00	t	GJ 3929	Radial Velocity	2022	51.56	\N
1078	Kepler-1513 b	48.30991786	8.594	\N	160.8842	f	0	\N	346	\N	\N	\N	f	f	2026-05-09 16:45:37.098155+00	2026-05-09 16:45:37.098156+00	t	Kepler-1513	Transit	2016	1139.09	\N
1079	Kepler-10 d	12	3.49	\N	151.06	f	0	\N	387	\N	\N	\N	f	f	2026-05-09 16:45:37.098157+00	2026-05-09 16:45:37.098158+00	t	Kepler-10	Radial Velocity	2023	605.04	\N
1080	WASP-87 b	692.8694	15.524465	\N	1.682795	f	0	\N	2049.54	\N	\N	\N	f	f	2026-05-09 16:45:37.098159+00	2026-05-09 16:45:37.098159+00	t	WASP-87	Transit	2016	973.22	\N
1081	OGLE2-TR-L9 b	1430.175	18.046	\N	2.4855335	f	0	\N	2034	\N	\N	\N	f	f	2026-05-09 16:45:37.098161+00	2026-05-09 16:45:37.098161+00	t	OGLE2-TR-L9	Transit	2008	5308.61	\N
1082	HD 109833 c	7.22	2.59	\N	13.900148	f	0	\N	756.7	\N	\N	\N	f	f	2026-05-09 16:45:37.098163+00	2026-05-09 16:45:37.098163+00	t	HD 109833	Transit	2022	259.48	\N
1083	GJ 9827 d	3.02	1.98	\N	6.20183	f	0	\N	675	\N	\N	\N	f	f	2026-05-09 16:45:37.098164+00	2026-05-09 16:45:37.098165+00	t	GJ 9827	Transit	2017	96.74	\N
1084	TOI-5704 b	10.5	3.2274	\N	3.771116	f	0	\N	949.07	\N	\N	\N	f	f	2026-05-09 16:45:37.098166+00	2026-05-09 16:45:37.098167+00	t	TOI-5704	Transit	2023	292.36	\N
1085	TOI-5007 b	211.03806225	11.07447293	\N	2.543371	f	0	\N	774	\N	\N	\N	f	f	2026-05-09 16:45:37.098168+00	2026-05-09 16:45:37.098169+00	t	TOI-5007	Transit	2026	663.24	\N
1086	TOI-6448 b	54	8.47398941	\N	14.844261	f	0	\N	745	\N	\N	\N	f	f	2026-05-09 16:45:37.09817+00	2026-05-09 16:45:37.09817+00	t	TOI-6448	Transit	2025	1261.83	\N
1087	Kepler-1655 b	5.4	2.213	\N	11.8728787	f	0	\N	938	\N	\N	\N	f	f	2026-05-09 16:45:37.098172+00	2026-05-09 16:45:37.098172+00	t	Kepler-1655	Transit	2018	695.56	\N
1088	Kepler-880 c	8.6	2.87	\N	11.8061737	f	0	\N	1407	\N	\N	\N	f	f	2026-05-09 16:45:37.098174+00	2026-05-09 16:45:37.098174+00	t	Kepler-880	Transit	2023	1961.25	\N
1089	Kepler-1624 b	35.3	6.59	\N	3.290314	f	0	\N	540	\N	\N	\N	f	f	2026-05-09 16:45:37.098175+00	2026-05-09 16:45:37.098176+00	t	Kepler-1624	Transit	2016	844.68	\N
1090	HAT-P-68 b	230.10892	12.016048	\N	2.29840551	f	0	\N	1027.8	\N	\N	\N	f	f	2026-05-09 16:45:37.098177+00	2026-05-09 16:45:37.098178+00	t	HAT-P-68	Transit	2020	659.33	\N
1091	NGTS-15 b	238.68913366	12.32987877	\N	3.27623	f	0	\N	1146	\N	\N	\N	f	f	2026-05-09 16:45:37.098179+00	2026-05-09 16:45:37.09818+00	t	NGTS-15	Transit	2021	2565.17	\N
1092	HD 191939 g	13.5	3.74	\N	284	f	0	\N	278	\N	\N	\N	f	f	2026-05-09 16:45:37.098181+00	2026-05-09 16:45:37.098182+00	t	HD 191939	Radial Velocity	2022	174.85	\N
1093	TOI-5688 A b	124	10.3	\N	2.94815527	f	0	\N	742	\N	\N	\N	f	f	2026-05-09 16:45:37.098183+00	2026-05-09 16:45:37.098184+00	t	TOI-5688 A	Transit	2024	738.15	\N
1094	HD 94890 c	2831.85110637	12.5	\N	2492.19	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098185+00	2026-05-09 16:45:37.098186+00	t	HD 94890	Radial Velocity	2025	201.24	\N
1095	MWC 758 c	\N	\N	\N	\N	f	0	\N	500	\N	\N	\N	f	f	2026-05-09 16:45:37.098187+00	2026-05-09 16:45:37.098187+00	t	MWC 758	Imaging	2023	520.34	\N
1096	HD 20794 b	2.7	1.45	\N	18.314	f	0	\N	660	\N	\N	\N	f	f	2026-05-09 16:45:37.098189+00	2026-05-09 16:45:37.098189+00	t	HD 20794	Radial Velocity	2011	19.58	\N
1097	HD 158259 c	5.6	2.23	\N	3.432	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098191+00	2026-05-09 16:45:37.098191+00	t	HD 158259	Radial Velocity	2020	88.22	\N
1098	HD 110067 e	3.9	1.94	\N	30.793091	f	0	\N	533	\N	\N	\N	f	f	2026-05-09 16:45:37.098192+00	2026-05-09 16:45:37.098193+00	t	HD 110067	Transit	2023	104.89	\N
1099	Kepler-20 b	9.7	1.773	\N	3.6961049	f	0	\N	1187	\N	\N	\N	f	f	2026-05-09 16:45:37.098194+00	2026-05-09 16:45:37.098195+00	t	Kepler-20	Transit	2011	921.6	\N
1100	Kepler-1972 c	2.11	0.868	\N	11.3295	f	0	\N	1215	\N	\N	\N	f	f	2026-05-09 16:45:37.098196+00	2026-05-09 16:45:37.098197+00	t	Kepler-1972	Transit	2022	937.17	\N
1101	TOI-5592 b	285.72773789	17.14974047	\N	2.6085846	f	0	\N	1789	\N	\N	\N	f	f	2026-05-09 16:45:37.098198+00	2026-05-09 16:45:37.098199+00	t	TOI-5592	Transit	2025	1947.24	\N
1102	HR 858 b	3.55	2.004	\N	3.585287	f	0	\N	1552	\N	\N	\N	f	f	2026-05-09 16:45:37.0982+00	2026-05-09 16:45:37.0982+00	t	HR 858	Transit	2019	104.25	\N
1103	OGLE-2008-BLG-092L b	57	8.74	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098202+00	2026-05-09 16:45:37.098202+00	t	OGLE-2008-BLG-092L	Microlensing	2014	26418.64	\N
1104	OGLE-2005-BLG-071L b	1200	13	\N	\N	f	0	\N	55	\N	\N	\N	f	f	2026-05-09 16:45:37.098204+00	2026-05-09 16:45:37.098204+00	t	OGLE-2005-BLG-071L	Microlensing	2005	10436.99	\N
1105	Kepler-445 b	3.12	1.58	\N	2.984151	f	0	\N	401	\N	\N	\N	f	f	2026-05-09 16:45:37.098205+00	2026-05-09 16:45:37.098206+00	t	Kepler-445	Transit	2015	414.87	\N
1106	Kepler-446 d	2.39	1.35	\N	5.148921	f	0	\N	436	\N	\N	\N	f	f	2026-05-09 16:45:37.09821+00	2026-05-09 16:45:37.098212+00	t	Kepler-446	Transit	2015	314.22	\N
1107	8 UMi b	524.41687155	13.5	\N	93.31	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098217+00	2026-05-09 16:45:37.098219+00	t	8 UMi	Radial Velocity	2015	530.17	\N
1108	TOI-1750 b	8.19	2.78943837	\N	11.33727129656	f	0	\N	612.92	\N	\N	\N	f	f	2026-05-09 16:45:37.098223+00	2026-05-09 16:45:37.098224+00	t	TOI-1750	Transit	2026	529.87	\N
1109	K2-133 c	3.2	1.603	\N	4.86784	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098228+00	2026-05-09 16:45:37.09823+00	t	K2-133	Transit	2017	245.17	\N
1110	TOI-4127 b	743.71847238	12.07	\N	56.3987	f	0	\N	556	\N	\N	\N	f	f	2026-05-09 16:45:37.098233+00	2026-05-09 16:45:37.098234+00	t	TOI-4127	Transit	2023	1042.5	\N
1111	HD 111998 b	1525.5763536	12.9	\N	810	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098235+00	2026-05-09 16:45:37.098236+00	t	HD 111998	Radial Velocity	2016	108.36	\N
1112	K2-398 b	5.79	2.274	\N	6.393025	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098238+00	2026-05-09 16:45:37.098239+00	t	K2-398	Transit	2022	1979.74	\N
1113	BEBOP-4 AB b	8358.8871041	\N	\N	1823.5	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098241+00	2026-05-09 16:45:37.098242+00	t	BEBOP-4 A	Radial Velocity	2025	764.16	\N
1114	OGLE-2006-BLG-109L b	231	14	\N	1788.5	f	0	\N	82	\N	\N	\N	f	f	2026-05-09 16:45:37.098244+00	2026-05-09 16:45:37.098244+00	t	OGLE-2006-BLG-109L	Microlensing	2008	4924.96	\N
1115	K2-404 b	6.94	2.53	\N	13.115365	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098246+00	2026-05-09 16:45:37.098247+00	t	K2-404	Transit	2022	396.7	\N
1116	GJ 3090 c	10	3.14	\N	15.9407	f	0	\N	407.2	\N	\N	\N	f	f	2026-05-09 16:45:37.098249+00	2026-05-09 16:45:37.09825+00	t	GJ 3090	Radial Velocity	2026	73.3	\N
1117	TOI-3464 b	397.28550875	13.7646283	\N	3.6515568	f	0	\N	1693	\N	\N	\N	f	f	2026-05-09 16:45:37.098253+00	2026-05-09 16:45:37.098254+00	t	TOI-3464	Transit	2025	1949.68	\N
1118	Kepler-1052 b	8.91	2.93	\N	34.8538276	f	0	\N	522	\N	\N	\N	f	f	2026-05-09 16:45:37.098256+00	2026-05-09 16:45:37.098257+00	t	Kepler-1052	Transit	2016	3077.1	\N
1119	K2-131 b	7.9	1.69	\N	0.3693038	f	0	\N	2223	\N	\N	\N	f	f	2026-05-09 16:45:37.098259+00	2026-05-09 16:45:37.09826+00	t	K2-131	Transit	2017	497.42	\N
1120	TOI-561 c	5.93	2.865	\N	10.778838	f	0	\N	802	\N	\N	\N	f	f	2026-05-09 16:45:37.098262+00	2026-05-09 16:45:37.098263+00	t	TOI-561	Transit	2020	279.84	\N
1121	K2-136 b	4.3	1.014	\N	7.9752	f	0	\N	610	\N	\N	\N	f	f	2026-05-09 16:45:37.098264+00	2026-05-09 16:45:37.098265+00	t	K2-136	Transit	2017	193.24	\N
1122	TOI-1853 b	73.2	3.46	\N	1.2436258	f	0	\N	1479	\N	\N	\N	f	f	2026-05-09 16:45:37.098267+00	2026-05-09 16:45:37.098268+00	t	TOI-1853	Transit	2023	538.5	\N
1123	Kepler-1986 b	4.23	1.89	\N	19.5489666	f	0	\N	579	\N	\N	\N	f	f	2026-05-09 16:45:37.09827+00	2026-05-09 16:45:37.098271+00	t	Kepler-1986	Transit	2023	2974.82	\N
1124	2MASS J02192210-3925225 b	4417.837	16.14096	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098272+00	2026-05-09 16:45:37.098273+00	t	2MASS J02192210-3925225	Imaging	2015	130.75	\N
1125	GJ 480 b	8.8	2.91	\N	9.5536	f	0	\N	406	\N	\N	\N	f	f	2026-05-09 16:45:37.098275+00	2026-05-09 16:45:37.098276+00	t	GJ 480	Radial Velocity	2020	46.43	\N
1126	WASP-32 b	835.8929	10.76064	\N	2.71866	f	0	\N	1388	\N	\N	\N	f	f	2026-05-09 16:45:37.098278+00	2026-05-09 16:45:37.098278+00	t	WASP-32	Transit	2010	900.17	\N
1127	K2-337 b	7.37	2.62	\N	16.273563	f	0	\N	850	\N	\N	\N	f	f	2026-05-09 16:45:37.09828+00	2026-05-09 16:45:37.098281+00	t	K2-337	Transit	2021	1375.19	\N
1128	TOI-2989 b	953.485221	12.55405838	\N	3.122832	f	0	\N	1001	\N	\N	\N	f	f	2026-05-09 16:45:37.098283+00	2026-05-09 16:45:37.098284+00	t	TOI-2989	Transit	2025	638.6	\N
1129	Kepler-963 c	0.156	0.6	\N	0.919783	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098286+00	2026-05-09 16:45:37.098287+00	t	Kepler-963	Transit	2024	2516.27	\N
1130	TOI-1136 c	6.32	2.879	\N	6.2574	f	0	\N	1062	\N	\N	\N	f	f	2026-05-09 16:45:37.09829+00	2026-05-09 16:45:37.098291+00	t	TOI-1136	Transit	2022	275.72	\N
1131	Kepler-1921 c	2.57	1.41	\N	3.15722086	f	0	\N	1791	\N	\N	\N	f	f	2026-05-09 16:45:37.098293+00	2026-05-09 16:45:37.098293+00	t	Kepler-1921	Transit	2023	3029.95	\N
1132	HD 23079 c	8.26	2.8	\N	5.748913	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098296+00	2026-05-09 16:45:37.098297+00	t	HD 23079	Radial Velocity	2025	109.13	\N
1133	TOI-1246 d	5.4	3.43139739	\N	18.654874	f	0	\N	587.77	\N	\N	\N	f	f	2026-05-09 16:45:37.098299+00	2026-05-09 16:45:37.0983+00	t	TOI-1246	Transit	2022	552.58	\N
1134	TOI-5238 b	23.7	5.22	\N	4.872171	f	0	\N	1042	\N	\N	\N	f	f	2026-05-09 16:45:37.098303+00	2026-05-09 16:45:37.098305+00	t	TOI-5238	Transit	2022	947.96	\N
1135	TOI-4860 b	86.7	8.7	\N	1.5227591	f	0	\N	694	\N	\N	\N	f	f	2026-05-09 16:45:37.098309+00	2026-05-09 16:45:37.098311+00	t	TOI-4860	Transit	2023	261.39	\N
1136	Kepler-30 d	23.1	8.8	\N	143.34394	f	0	\N	308	\N	\N	\N	f	f	2026-05-09 16:45:37.098314+00	2026-05-09 16:45:37.098316+00	t	Kepler-30	Transit	2012	2981.79	\N
1137	Kepler-1610 c	5.02	2.09	\N	44.9851885	f	0	\N	433	\N	\N	\N	f	f	2026-05-09 16:45:37.098319+00	2026-05-09 16:45:37.098321+00	t	Kepler-1610	Transit	2023	2819.07	\N
1138	HD 28471 d	4.91	2.06	\N	11.681	f	0	\N	945	\N	\N	\N	f	f	2026-05-09 16:45:37.098324+00	2026-05-09 16:45:37.098326+00	t	HD 28471	Radial Velocity	2025	142.35	\N
1139	WASP-132 d	1639.99458012	12.8	\N	1816.6	f	0	\N	107	\N	\N	\N	f	f	2026-05-09 16:45:37.098328+00	2026-05-09 16:45:37.09833+00	t	WASP-132	Radial Velocity	2024	400.88	\N
1140	Kepler-454 b	5.4	2.37	\N	10.5737534	f	0	\N	916	\N	\N	\N	f	f	2026-05-09 16:45:37.098332+00	2026-05-09 16:45:37.098333+00	t	Kepler-454	Transit	2015	752.99	\N
1141	K2-157 b	1.14	0.935	\N	0.3652575	f	0	\N	2432	\N	\N	\N	f	f	2026-05-09 16:45:37.098336+00	2026-05-09 16:45:37.098338+00	t	K2-157	Transit	2018	973.16	\N
1142	NGTS-34 b	19.1	3.65	\N	43.12655	f	0	\N	624	\N	\N	\N	f	f	2026-05-09 16:45:37.098342+00	2026-05-09 16:45:37.098344+00	t	NGTS-34	Transit	2025	392.94	\N
1143	NGC 2682 Sand 1429 b	572.0911326	13.4	\N	77.48	f	0	\N	683	\N	\N	\N	f	f	2026-05-09 16:45:37.098349+00	2026-05-09 16:45:37.09835+00	t	NGC 2682 Sand 1429	Radial Velocity	2024	2781.44	\N
1144	K2-352 b	2.45	1.37	\N	3.665912	f	0	\N	1160	\N	\N	\N	f	f	2026-05-09 16:45:37.098353+00	2026-05-09 16:45:37.098354+00	t	K2-352	Transit	2021	574.2	\N
1145	Qatar-2 b	792.635	14.056	\N	1.33711647	f	0	\N	1344	\N	\N	\N	f	f	2026-05-09 16:45:37.098355+00	2026-05-09 16:45:37.098356+00	t	Qatar-2	Transit	2011	591.56	\N
1146	WASP-66 b	746.9005	15.6926	\N	4.08605	f	0	\N	1569.7	\N	\N	\N	f	f	2026-05-09 16:45:37.098357+00	2026-05-09 16:45:37.098358+00	t	WASP-66	Transit	2012	1631.62	\N
1147	Qatar-8 b	117.91493	14.403565	\N	3.71495	f	0	\N	1457	\N	\N	\N	f	f	2026-05-09 16:45:37.098359+00	2026-05-09 16:45:37.09836+00	t	Qatar-8	Transit	2019	918.12	\N
1148	Kepler-290 d	0.566	0.86	\N	0.764017553	f	0	\N	1589	\N	\N	\N	f	f	2026-05-09 16:45:37.098361+00	2026-05-09 16:45:37.098361+00	t	Kepler-290	Transit	2023	2265.57	\N
1149	Kepler-1814 b	6.21	2.36961357	\N	2.935359955	f	0	\N	1022	\N	\N	\N	f	f	2026-05-09 16:45:37.098363+00	2026-05-09 16:45:37.098363+00	t	Kepler-1814	Transit	2021	2369.02	\N
1150	TOI-1347 b	11.1	1.8	\N	0.84742346	f	0	\N	1400	\N	\N	\N	f	f	2026-05-09 16:45:37.098365+00	2026-05-09 16:45:37.098365+00	t	TOI-1347	Transit	2024	481	\N
1151	TOI-3523 A b	435.42491759	15.9727975	\N	2.30458952	f	0	\N	1984	\N	\N	\N	f	f	2026-05-09 16:45:37.098366+00	2026-05-09 16:45:37.098367+00	t	TOI-3523 A	Transit	2025	2104.67	\N
1152	TOI-2295 c	1783.01736327	12.8	\N	966.5	f	0	\N	234.9	\N	\N	\N	f	f	2026-05-09 16:45:37.098368+00	2026-05-09 16:45:37.098369+00	t	TOI-2295	Radial Velocity	2024	411.87	\N
1153	KELT-18 b	375.0394	17.59813	\N	2.8717518	f	0	\N	2085	\N	\N	\N	f	f	2026-05-09 16:45:37.09837+00	2026-05-09 16:45:37.098371+00	t	KELT-18	Transit	2017	1048.19	\N
1154	TOI-431 d	9.9	3.29	\N	12.46103	f	0	\N	633	\N	\N	\N	f	f	2026-05-09 16:45:37.098372+00	2026-05-09 16:45:37.098373+00	t	TOI-431	Transit	2021	106.22	\N
1155	Kepler-2001 b	1.12	1.04	\N	1.090011003	f	0	\N	1402	\N	\N	\N	f	f	2026-05-09 16:45:37.098375+00	2026-05-09 16:45:37.098377+00	t	Kepler-2001	Transit	2023	2532.76	\N
1156	WASP-197 b	403.32424848	14.44837612	\N	5.167228	f	0	\N	1665	\N	\N	\N	f	f	2026-05-09 16:45:37.098378+00	2026-05-09 16:45:37.098385+00	t	WASP-197	Transit	2025	1577.54	\N
1157	TOI-1136 e	6.07	2.639	\N	18.801	f	0	\N	737	\N	\N	\N	f	f	2026-05-09 16:45:37.098387+00	2026-05-09 16:45:37.098389+00	t	TOI-1136	Transit	2022	275.72	\N
1158	Kepler-416 c	6.13	2.352	\N	12.209	f	0	\N	791	\N	\N	\N	f	f	2026-05-09 16:45:37.09839+00	2026-05-09 16:45:37.098391+00	t	Kepler-416	Transit Timing Variations	2014	2253.15	\N
1159	NN Ser c	2329.6	12.6	\N	6987	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098393+00	2026-05-09 16:45:37.098394+00	t	NN Ser	Eclipse Timing Variations	2010	1682.37	\N
1160	K2-287 b	100.11645	9.494023	\N	14.893291	f	0	\N	804	\N	\N	\N	f	f	2026-05-09 16:45:37.098396+00	2026-05-09 16:45:37.098399+00	t	K2-287	Transit	2018	516.42	\N
1161	GJ 341 b	4	0.88	\N	7.57686	f	0	\N	629	\N	\N	\N	f	f	2026-05-09 16:45:37.098401+00	2026-05-09 16:45:37.098401+00	t	GJ 341	Transit	2025	34.1	\N
1162	K2-138 b	3.1	1.51	\N	2.35309	f	0	\N	1157	\N	\N	\N	f	f	2026-05-09 16:45:37.098403+00	2026-05-09 16:45:37.098404+00	t	K2-138	Transit	2017	660.74	\N
1163	K2-178 b	12.4	3.55790985	\N	8.747818	f	0	\N	840.29	\N	\N	\N	f	f	2026-05-09 16:45:37.098406+00	2026-05-09 16:45:37.098406+00	t	K2-178	Transit	2018	700.43	\N
1164	Kepler-449 c	8.07	2.764	\N	33.6727	f	0	\N	661	\N	\N	\N	f	f	2026-05-09 16:45:37.098408+00	2026-05-09 16:45:37.098409+00	t	Kepler-449	Transit	2015	789.13	\N
1165	CoRoT-1 b	327.35	16.7	\N	1.5089557	f	0	\N	1898	\N	\N	\N	f	f	2026-05-09 16:45:37.098411+00	2026-05-09 16:45:37.098412+00	t	CoRoT-1	Transit	2008	2569.81	\N
1166	K2-406 b	19.2	4.602	\N	22.549406	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098413+00	2026-05-09 16:45:37.098414+00	t	K2-406	Transit	2022	278.46	\N
1167	TOI-1758 b	6.9	3.62	\N	20.705074685	f	0	\N	551.44	\N	\N	\N	f	f	2026-05-09 16:45:37.098415+00	2026-05-09 16:45:37.098416+00	t	TOI-1758	Transit	2024	315.14	\N
1168	WISPIT 1 b	3305.4154328	12.4	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098417+00	2026-05-09 16:45:37.098418+00	t	WISPIT 1	Imaging	2025	750.18	\N
1169	TOI-5108 b	32	6.6	\N	6.753581	f	0	\N	1180	\N	\N	\N	f	f	2026-05-09 16:45:37.098419+00	2026-05-09 16:45:37.09842+00	t	TOI-5108	Transit	2025	427	\N
1170	WASP-84 b	220	10.72	\N	8.52349648	f	0	\N	732	\N	\N	\N	f	f	2026-05-09 16:45:37.098422+00	2026-05-09 16:45:37.098423+00	t	WASP-84	Transit	2014	328.07	\N
1171	K2-371 b	\N	13.024	\N	3.114905	f	0	\N	956.83	\N	\N	\N	f	f	2026-05-09 16:45:37.098424+00	2026-05-09 16:45:37.098425+00	t	K2-371	Transit	2022	1444.26	\N
1172	Kepler-1513 c	84.54235626	11	\N	841.4	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098427+00	2026-05-09 16:45:37.098427+00	t	Kepler-1513	Transit Timing Variations	2023	1139.09	\N
1173	NY Vir c	1760.7782	12.8	\N	8799	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098429+00	2026-05-09 16:45:37.098429+00	t	NY Vir	Eclipse Timing Variations	2019	1774.37	\N
1174	TOI-6628 b	235.19302118	10.98480109	\N	18.18424	f	0	\N	833	\N	\N	\N	f	f	2026-05-09 16:45:37.09843+00	2026-05-09 16:45:37.098431+00	t	TOI-6628	Transit	2025	1045.42	\N
1175	LTT 9779 b	29.32	4.72	\N	0.792052	f	0	\N	1978	\N	\N	\N	f	f	2026-05-09 16:45:37.098432+00	2026-05-09 16:45:37.098433+00	t	LTT 9779	Transit	2020	262.35	\N
1176	Kepler-975 b	2.79	1.48	\N	1.970342457	f	0	\N	1599	\N	\N	\N	f	f	2026-05-09 16:45:37.098434+00	2026-05-09 16:45:37.098435+00	t	Kepler-975	Transit	2016	1389.71	\N
1177	HD 143811 AB b	1938.7532827	15.69257298	\N	117000	f	0	\N	1042	\N	\N	\N	f	f	2026-05-09 16:45:37.098436+00	2026-05-09 16:45:37.098437+00	t	HD 143811 A	Imaging	2025	445.56	\N
1178	TOI-238 c	6.7	2.18	\N	8.465651	f	0	\N	696	\N	\N	\N	f	f	2026-05-09 16:45:37.098438+00	2026-05-09 16:45:37.098439+00	t	TOI-238	Radial Velocity	2024	262.69	\N
1179	HATS-54 b	239.32479047	11.37711541	\N	2.5441765	f	0	\N	1429	\N	\N	\N	f	f	2026-05-09 16:45:37.09844+00	2026-05-09 16:45:37.098441+00	t	HATS-54	Transit	2019	2441.55	\N
1180	TIC 279401253 c	2548.98382414	12.6	\N	155.3	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098442+00	2026-05-09 16:45:37.098442+00	t	TIC 279401253	Transit	2023	931.45	\N
1181	TOI-5340 b	270.15414595	15.07607904	\N	4.9394392	f	0	\N	1566	\N	\N	\N	f	f	2026-05-09 16:45:37.098444+00	2026-05-09 16:45:37.098444+00	t	TOI-5340	Transit	2025	1737.2	\N
1182	TOI-5799 c	3.75	1.76	\N	14.010449	f	0	\N	337	\N	\N	\N	f	f	2026-05-09 16:45:37.098446+00	2026-05-09 16:45:37.098446+00	t	TOI-5799	Transit	2025	90.71	\N
1183	Kepler-318 c	13.1	3.68	\N	11.815007	f	0	\N	762	\N	\N	\N	f	f	2026-05-09 16:45:37.098448+00	2026-05-09 16:45:37.098448+00	t	Kepler-318	Transit	2014	1595.36	\N
1184	TOI-4561 b	3.81	1.77789214	\N	8.93547936706	f	0	\N	789.81	\N	\N	\N	f	f	2026-05-09 16:45:37.09845+00	2026-05-09 16:45:37.09845+00	t	TOI-4561	Transit	2026	583.85	\N
1185	HD 165131 b	5943.3912109	12.1	\N	2342.6	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098452+00	2026-05-09 16:45:37.098452+00	t	HD 165131	Radial Velocity	2023	187.3	\N
1186	HAT-P-19 b	88.03846874	11.29865255	\N	4.00878322	f	0	\N	981.2	\N	\N	\N	f	f	2026-05-09 16:45:37.098454+00	2026-05-09 16:45:37.098454+00	t	HAT-P-19	Transit	2010	659.09	\N
1187	K2-401 b	5.74	2.262	\N	6.293099	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098455+00	2026-05-09 16:45:37.098456+00	t	K2-401	Transit	2022	654.68	\N
1188	Kepler-1487 c	48.7	7.97	\N	35.8007112	f	0	\N	991	\N	\N	\N	f	f	2026-05-09 16:45:37.098457+00	2026-05-09 16:45:37.098458+00	t	Kepler-1487	Transit	2023	3309.24	\N
1189	Kepler-725 b	81.6	10.8	\N	39.64372	f	0	\N	514	\N	\N	\N	f	f	2026-05-09 16:45:37.098459+00	2026-05-09 16:45:37.09846+00	t	Kepler-725	Transit	2016	2473.79	\N
1190	Kepler-431 d	1.41	1.11	\N	11.922	f	0	\N	856	\N	\N	\N	f	f	2026-05-09 16:45:37.098461+00	2026-05-09 16:45:37.098462+00	t	Kepler-431	Transit	2015	1586.9	\N
1191	Kepler-431 c	0.229	0.668	\N	8.703	f	0	\N	951	\N	\N	\N	f	f	2026-05-09 16:45:37.098463+00	2026-05-09 16:45:37.098464+00	t	Kepler-431	Transit	2015	1586.9	\N
1192	HATS-57 b	1000.21101	12.767051	\N	2.350621	f	0	\N	1413.4	\N	\N	\N	f	f	2026-05-09 16:45:37.098465+00	2026-05-09 16:45:37.098466+00	t	HATS-57	Transit	2019	911.56	\N
1193	WASP-34 b	177.9848	11.209	\N	4.31768	f	0	\N	1250	\N	\N	\N	f	f	2026-05-09 16:45:37.098467+00	2026-05-09 16:45:37.098467+00	t	WASP-34	Transit	2010	430.84	\N
1194	WASP-3 b	772.3269	15.91678	\N	1.84683	f	0	\N	2020	\N	\N	\N	f	f	2026-05-09 16:45:37.098469+00	2026-05-09 16:45:37.098469+00	t	WASP-3	Transit	2007	753.95	\N
1195	Kepler-449 b	4.88	2.056	\N	12.58242	f	0	\N	917	\N	\N	\N	f	f	2026-05-09 16:45:37.098471+00	2026-05-09 16:45:37.098471+00	t	Kepler-449	Transit	2015	789.13	\N
1196	HD 1461 b	6.44	2.42	\N	5.77152	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098472+00	2026-05-09 16:45:37.098473+00	t	HD 1461	Radial Velocity	2010	76.49	\N
1197	HD 1461 c	5.59	2.23	\N	13.5052	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098474+00	2026-05-09 16:45:37.098476+00	t	HD 1461	Radial Velocity	2015	76.49	\N
1198	GJ 3341 b	6.6	2.46	\N	14.207	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.09848+00	2026-05-09 16:45:37.098482+00	t	GJ 3341	Radial Velocity	2015	77.03	\N
1199	Kepler-430 c	3.71	1.75	\N	110.979	f	0	\N	458	\N	\N	\N	f	f	2026-05-09 16:45:37.098487+00	2026-05-09 16:45:37.098488+00	t	Kepler-430	Transit	2015	2992.41	\N
1200	Kepler-444 b	0.0374	0.403	\N	3.6001053	f	0	\N	938	\N	\N	\N	f	f	2026-05-09 16:45:37.09849+00	2026-05-09 16:45:37.098491+00	t	Kepler-444	Transit	2015	118.85	\N
1201	Kepler-444 c	0.0793	0.497	\N	4.5458841	f	0	\N	868	\N	\N	\N	f	f	2026-05-09 16:45:37.098493+00	2026-05-09 16:45:37.098495+00	t	Kepler-444	Transit	2015	118.85	\N
1202	TOI-4010 d	38.15	6.18	\N	14.70886	f	0	\N	650	\N	\N	\N	f	f	2026-05-09 16:45:37.098498+00	2026-05-09 16:45:37.098499+00	t	TOI-4010	Transit	2023	578.94	\N
1203	K2-275 c	5.52	2.21	\N	8.4388385	f	0	\N	653	\N	\N	\N	f	f	2026-05-09 16:45:37.098502+00	2026-05-09 16:45:37.098503+00	t	K2-275	Transit	2018	402.6	\N
1204	TOI-5734 b	9.1	2.1	\N	6.1841876	f	0	\N	688	\N	\N	\N	f	f	2026-05-09 16:45:37.098506+00	2026-05-09 16:45:37.098507+00	t	TOI-5734	Transit	2026	106.03	\N
1205	Kepler-1487 b	5.18	2.13	\N	7.31946363	f	0	\N	1682	\N	\N	\N	f	f	2026-05-09 16:45:37.098509+00	2026-05-09 16:45:37.09851+00	t	Kepler-1487	Transit	2016	3309.24	\N
1206	Kepler-323 b	3.9	1.381	\N	1.678328	f	0	\N	1838	\N	\N	\N	f	f	2026-05-09 16:45:37.098512+00	2026-05-09 16:45:37.098513+00	t	Kepler-323	Transit	2014	1483.63	\N
1207	NGTS-17 b	242.82090295	13.89913607	\N	3.24253	f	0	\N	1457	\N	\N	\N	f	f	2026-05-09 16:45:37.098514+00	2026-05-09 16:45:37.098515+00	t	NGTS-17	Transit	2021	3392.94	\N
1208	Kepler-10 c	11.29	2.355	\N	45.294301	f	0	\N	579	\N	\N	\N	f	f	2026-05-09 16:45:37.098517+00	2026-05-09 16:45:37.098518+00	t	Kepler-10	Transit	2011	605.04	\N
1209	Kepler-1972 b	2.02	0.802	\N	7.54425	f	0	\N	1084	\N	\N	\N	f	f	2026-05-09 16:45:37.09852+00	2026-05-09 16:45:37.098521+00	t	Kepler-1972	Transit	2022	937.17	\N
1210	TOI-6478 b	19.2	4.6	\N	34.005019	f	0	\N	204.4	\N	\N	\N	f	f	2026-05-09 16:45:37.098522+00	2026-05-09 16:45:37.098523+00	t	TOI-6478	Transit	2025	125.91	\N
1211	HD 183263 b	1103.1824007	13.1	\N	624.87404	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098525+00	2026-05-09 16:45:37.098526+00	t	HD 183263	Radial Velocity	2004	176.76	\N
1212	MOA-2011-BLG-262L b	17	4.29	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098528+00	2026-05-09 16:45:37.098528+00	t	MOA-2011-BLG-262L	Microlensing	2014	23483.23	\N
1213	HD 40307 d	1775.3894815	\N	\N	20.432	f	0	\N	541	\N	\N	\N	f	f	2026-05-09 16:45:37.09853+00	2026-05-09 16:45:37.098531+00	t	HD 40307	Radial Velocity	2009	42.19	\N
1214	HD 87883 b	2005.49724817	12.7	\N	3006	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098533+00	2026-05-09 16:45:37.098534+00	t	HD 87883	Radial Velocity	2009	59.66	\N
1215	TOI-815 c	23.5	2.62	\N	34.976145	f	0	\N	469	\N	\N	\N	f	f	2026-05-09 16:45:37.098536+00	2026-05-09 16:45:37.098537+00	t	TOI-815	Transit	2024	194.75	\N
1216	Kepler-25 d	71.9	10	\N	122.4	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098539+00	2026-05-09 16:45:37.09854+00	t	Kepler-25	Radial Velocity	2014	793.37	\N
1217	TOI-3331 A b	721.47048389	12.97999965	\N	2.0180231	f	0	\N	1488	\N	\N	\N	f	f	2026-05-09 16:45:37.098542+00	2026-05-09 16:45:37.098543+00	t	TOI-3331 A	Transit	2022	708.39	\N
1218	HD 74698 c	126	14	\N	3449	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098545+00	2026-05-09 16:45:37.098546+00	t	HD 74698	Radial Velocity	2023	169.81	\N
1219	TOI-2068 b	3.97	1.821	\N	7.768915	f	0	\N	520.62	\N	\N	\N	f	f	2026-05-09 16:45:37.098549+00	2026-05-09 16:45:37.098549+00	t	TOI-2068	Transit	2024	172.64	\N
1220	K2-412 b	5.13	2.116	\N	5.9382	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098551+00	2026-05-09 16:45:37.098553+00	t	K2-412	Transit	2022	2133.34	\N
1221	Kepler-603 b	7.51	2.65	\N	21.05358596	f	0	\N	731	\N	\N	\N	f	f	2026-05-09 16:45:37.098555+00	2026-05-09 16:45:37.098556+00	t	Kepler-603	Transit	2016	5021.6	\N
1222	Barnard d	0.263	0.694	\N	2.3402	f	0	\N	483	\N	\N	\N	f	f	2026-05-09 16:45:37.09856+00	2026-05-09 16:45:37.098562+00	t	Barnard's star	Radial Velocity	2025	5.96	\N
1223	K2-132 b	155.7367	14.5717	\N	9.1751	f	0	\N	1586	\N	\N	\N	f	f	2026-05-09 16:45:37.098566+00	2026-05-09 16:45:37.098568+00	t	K2-132	Transit	2017	1988.96	\N
1224	TOI-4747 b	14.8	3.95803201	\N	5.21924158592	f	0	\N	1035	\N	\N	\N	f	f	2026-05-09 16:45:37.098571+00	2026-05-09 16:45:37.098572+00	t	TOI-4747	Transit	2026	993.52	\N
1225	HD 40307 f	5.2	2.13	\N	51.76	f	0	\N	398	\N	\N	\N	f	f	2026-05-09 16:45:37.098575+00	2026-05-09 16:45:37.098577+00	t	HD 40307	Radial Velocity	2013	42.19	\N
1226	Kepler-444 e	0.1	0.546	\N	7.743493	f	0	\N	727	\N	\N	\N	f	f	2026-05-09 16:45:37.098578+00	2026-05-09 16:45:37.098579+00	t	Kepler-444	Transit	2015	118.85	\N
1227	Kepler-444 d	0.2	0.53	\N	6.189392	f	0	\N	783	\N	\N	\N	f	f	2026-05-09 16:45:37.098581+00	2026-05-09 16:45:37.098582+00	t	Kepler-444	Transit	2015	118.85	\N
1228	Kepler-444 f	0.332	0.741	\N	9.740486	f	0	\N	673	\N	\N	\N	f	f	2026-05-09 16:45:37.098584+00	2026-05-09 16:45:37.098585+00	t	Kepler-444	Transit	2015	118.85	\N
1229	HIP 107773 b	629.3034	13.4	\N	144.3	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098586+00	2026-05-09 16:45:37.098587+00	t	HIP 107773	Radial Velocity	2015	343.05	\N
1230	TOI-763 b	9.79	2.28	\N	5.6057	f	0	\N	1038	\N	\N	\N	f	f	2026-05-09 16:45:37.098589+00	2026-05-09 16:45:37.09859+00	t	TOI-763	Transit	2020	310.26	\N
1231	K2-174 b	7.27	2.6	\N	19.562307	f	0	\N	455	\N	\N	\N	f	f	2026-05-09 16:45:37.098593+00	2026-05-09 16:45:37.098594+00	t	K2-174	Transit	2018	325.93	\N
1232	TOI-615 b	138.25535705	18.97680433	\N	4.6615983	f	0	\N	1666	\N	\N	\N	f	f	2026-05-09 16:45:37.098596+00	2026-05-09 16:45:37.098597+00	t	TOI-615	Transit	2023	1175.49	\N
1233	NY Vir b	730.978	13.3	\N	3160	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.0986+00	2026-05-09 16:45:37.098602+00	t	NY Vir	Eclipse Timing Variations	2011	1774.37	\N
1234	AF Lep b	1147.36054927	13	\N	8905	f	0	\N	1400	\N	\N	\N	f	f	2026-05-09 16:45:37.098605+00	2026-05-09 16:45:37.098607+00	t	AF Lep	Imaging	2023	87.59	\N
1235	Kepler-763 d	3.43	1.67	\N	6.50327035	f	0	\N	804	\N	\N	\N	f	f	2026-05-09 16:45:37.098611+00	2026-05-09 16:45:37.098613+00	t	Kepler-763	Transit	2023	3139.12	\N
1236	OGLE-2005-BLG-169L b	14.1	3.84	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098616+00	2026-05-09 16:45:37.098617+00	t	OGLE-2005-BLG-169L	Microlensing	2006	13372.4	\N
1237	K2-133 d	4.67	2.003	\N	11.02454	f	0	\N	734	\N	\N	\N	f	f	2026-05-09 16:45:37.098621+00	2026-05-09 16:45:37.098622+00	t	K2-133	Transit	2017	245.17	\N
1238	K2-165 b	2.17	1.27443657	\N	2.354992	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098625+00	2026-05-09 16:45:37.098626+00	t	K2-165	Transit	2018	438.98	\N
1239	Kepler-1990 b	10.7	3.27	\N	1.73513619	f	0	\N	1554	\N	\N	\N	f	f	2026-05-09 16:45:37.098628+00	2026-05-09 16:45:37.098629+00	t	Kepler-1990	Transit	2023	1280.94	\N
1240	Kepler-164 e	16.7	4.24	\N	94.886902	f	0	\N	429	\N	\N	\N	f	f	2026-05-09 16:45:37.09863+00	2026-05-09 16:45:37.098631+00	t	Kepler-164	Transit	2023	2905.26	\N
1241	K2-87 b	44.9	7.6	\N	9.726618	f	0	\N	979	\N	\N	\N	f	f	2026-05-09 16:45:37.098633+00	2026-05-09 16:45:37.098634+00	t	K2-87	Transit	2016	1602.22	\N
1242	TOI-1338 c	75.4	10.3	\N	215.79	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098637+00	2026-05-09 16:45:37.098638+00	t	TOI-1338 A	Radial Velocity	2023	1301.42	\N
1243	OGLE-2019-BLG-0362L b	1036.12060682	13.1	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.09864+00	2026-05-09 16:45:37.098641+00	t	OGLE-2019-BLG-0362L	Microlensing	2022	19014.89	\N
1244	TOI-5803 b	10.7	3.2732	\N	5.38305	f	0	\N	678.87	\N	\N	\N	f	f	2026-05-09 16:45:37.098643+00	2026-05-09 16:45:37.098644+00	t	TOI-5803	Transit	2023	274.01	\N
1245	AT2021ueyL b	425.89006538	13.6	\N	4168.69	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098645+00	2026-05-09 16:45:37.098646+00	t	AT2021ueyL	Microlensing	2025	3392.02	\N
1246	HD 145675 c	2510.8444153	12.6	\N	15732.45889	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098648+00	2026-05-09 16:45:37.098649+00	t	14 Her	Radial Velocity	2021	58.49	\N
1247	WASP-60 b	174.8065	9.86392	\N	4.305	f	0	\N	1479	\N	\N	\N	f	f	2026-05-09 16:45:37.09865+00	2026-05-09 16:45:37.098651+00	t	WASP-60	Transit	2012	1405.9	\N
1248	XO-2 S b	82.6358	10.9	\N	18.157	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098653+00	2026-05-09 16:45:37.098655+00	t	XO-2 S	Radial Velocity	2014	493.79	\N
1249	TOI-776 b	5	1.798	\N	8.24662	f	0	\N	520	\N	\N	\N	f	f	2026-05-09 16:45:37.098657+00	2026-05-09 16:45:37.098658+00	t	TOI-776	Transit	2020	88.62	\N
1250	Kepler-1987 d	7.56	2.66	\N	5.644914154	f	0	\N	744	\N	\N	\N	f	f	2026-05-09 16:45:37.098661+00	2026-05-09 16:45:37.098663+00	t	Kepler-1987	Transit	2023	1942.86	\N
1251	TOI-833 b	2.15	1.27	\N	1.0418777	f	0	\N	1118	\N	\N	\N	f	f	2026-05-09 16:45:37.098665+00	2026-05-09 16:45:37.098667+00	t	TOI-833	Transit	2022	136.06	\N
1252	KELT-24 b	1458.83238813	12.71098411	\N	5.55149296	f	0	\N	1391	\N	\N	\N	f	f	2026-05-09 16:45:37.09867+00	2026-05-09 16:45:37.098672+00	t	KELT-24	Transit	2019	314.8	\N
1253	TOI-858 B b	349.6112477	14.06727078	\N	3.2797178	f	0	\N	1529	\N	\N	\N	f	f	2026-05-09 16:45:37.098676+00	2026-05-09 16:45:37.098677+00	t	TOI-858 B	Transit	2023	816.98	\N
1254	WASP-13 b	114.4188	13.67498	\N	4.35301	f	0	\N	1531	\N	\N	\N	f	f	2026-05-09 16:45:37.098681+00	2026-05-09 16:45:37.098682+00	t	WASP-13	Transit	2009	742.13	\N
1255	WASP-10 b	1001.12	12.106	\N	3.0927616	f	0	\N	1370	\N	\N	\N	f	f	2026-05-09 16:45:37.098684+00	2026-05-09 16:45:37.098685+00	t	WASP-10	Transit	2008	459.87	\N
1256	HAT-P-32 b	216.1244	22.19382	\N	2.1500082	f	0	\N	1835.7	\N	\N	\N	f	f	2026-05-09 16:45:37.098687+00	2026-05-09 16:45:37.098688+00	t	HAT-P-32	Transit	2011	943.26	\N
1257	Kepler-1704 b	1322.16617312	11.94877343	\N	988.88112	f	0	\N	253.8	\N	\N	\N	f	f	2026-05-09 16:45:37.09869+00	2026-05-09 16:45:37.098691+00	t	Kepler-1704	Transit	2013	2724.89	\N
1258	Kepler-1693 b	2.21	1.28938413	\N	12.0999	f	0	\N	807	\N	\N	\N	f	f	2026-05-09 16:45:37.098693+00	2026-05-09 16:45:37.098693+00	t	Kepler-1693	Transit	2020	2479	\N
1259	HD 199509 b	43.22466335	7.43	\N	99.62167	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098695+00	2026-05-09 16:45:37.098696+00	t	HD 199509	Radial Velocity	2022	79.27	\N
1260	Kepler-104 b	19.6	3.1	\N	11.427548	f	0	\N	852	\N	\N	\N	f	f	2026-05-09 16:45:37.098698+00	2026-05-09 16:45:37.098699+00	t	Kepler-104	Transit	2014	1307.18	\N
1261	Kepler-945 b	7.41	2.63	\N	31.0033814	f	0	\N	616	\N	\N	\N	f	f	2026-05-09 16:45:37.098701+00	2026-05-09 16:45:37.098702+00	t	Kepler-945	Transit	2016	5385.65	\N
1262	TOI-2416 b	953.485221	9.86390302	\N	8.275479	f	0	\N	1080	\N	\N	\N	f	f	2026-05-09 16:45:37.098705+00	2026-05-09 16:45:37.098705+00	t	TOI-2416	Transit	2023	1819.08	\N
1263	HD 110113 c	10.5	2.11384817	\N	6.744	f	0	\N	990	\N	\N	\N	f	f	2026-05-09 16:45:37.098707+00	2026-05-09 16:45:37.098708+00	t	HD 110113	Radial Velocity	2021	346.73	\N
1264	XO-2 N b	179.89178	11.130537	\N	2.61586178	f	0	\N	1328	\N	\N	\N	f	f	2026-05-09 16:45:37.09871+00	2026-05-09 16:45:37.098711+00	t	XO-2 N	Transit	2007	503.17	\N
1265	EPIC 206317286 b	0.84	0.96	\N	1.58252	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098713+00	2026-05-09 16:45:37.098714+00	t	EPIC 206317286	Transit	2019	1025.27	\N
1266	WASP-102 b	197.68926915	14.90794433	\N	2.709813	f	0	\N	1671	\N	\N	\N	f	f	2026-05-09 16:45:37.098716+00	2026-05-09 16:45:37.098717+00	t	WASP-102	Transit	2025	1747.18	\N
1267	Kepler-297 d	\N	32.6	\N	150.0189511	f	0	\N	325	\N	\N	\N	f	f	2026-05-09 16:45:37.098719+00	2026-05-09 16:45:37.09872+00	t	Kepler-297	Transit	2023	2257.46	\N
1268	Kepler-1994 b	0.087	0.51	\N	4.61225043	f	0	\N	1032	\N	\N	\N	f	f	2026-05-09 16:45:37.098722+00	2026-05-09 16:45:37.098723+00	t	Kepler-1994	Transit	2023	789.27	\N
1269	HATS-32 b	292.4036	14.000041	\N	2.8126548	f	0	\N	1437	\N	\N	\N	f	f	2026-05-09 16:45:37.098725+00	2026-05-09 16:45:37.098726+00	t	HATS-32	Transit	2016	2430.24	\N
1270	HAT-P-46 b	156.684	14.392	\N	4.463129	f	0	\N	1458	\N	\N	\N	f	f	2026-05-09 16:45:37.098728+00	2026-05-09 16:45:37.098729+00	t	HAT-P-46	Transit	2014	948.25	\N
1271	TOI-125 b	9.5	2.726	\N	4.65382	f	0	\N	1037	\N	\N	\N	f	f	2026-05-09 16:45:37.098732+00	2026-05-09 16:45:37.098733+00	t	TOI-125	Transit	2019	362.23	\N
1272	TOI-125 d	13.6	2.93	\N	19.98	f	0	\N	638.1	\N	\N	\N	f	f	2026-05-09 16:45:37.098735+00	2026-05-09 16:45:37.098736+00	t	TOI-125	Transit	2020	362.23	\N
1273	Kepler-1130 b	0.437	0.8	\N	5.45298175	f	0	\N	904	\N	\N	\N	f	f	2026-05-09 16:45:37.098737+00	2026-05-09 16:45:37.098738+00	t	Kepler-1130	Transit	2016	813.25	\N
1274	Kepler-1878 b	8.86	2.92019781	\N	4.445879936	f	0	\N	1063	\N	\N	\N	f	f	2026-05-09 16:45:37.09874+00	2026-05-09 16:45:37.098741+00	t	Kepler-1878	Transit	2021	4873.75	\N
1275	HD 21411 b	65.9	9.52	\N	84.288	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098743+00	2026-05-09 16:45:37.098744+00	t	HD 21411	Radial Velocity	2019	95.02	\N
1276	Kepler-239 c	6.85	2.51	\N	56.228098	f	0	\N	366	\N	\N	\N	f	f	2026-05-09 16:45:37.098746+00	2026-05-09 16:45:37.098756+00	t	Kepler-239	Transit	2014	2113.85	\N
1277	NSVS 14256825 b	4497.2945	12.3	\N	3225	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098758+00	2026-05-09 16:45:37.098759+00	t	NSVS 14256825	Eclipse Timing Variations	2019	2677.34	\N
1278	HD 143361 b	1382.55357045	12.9	\N	1039.15	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098761+00	2026-05-09 16:45:37.098762+00	t	HD 143361	Radial Velocity	2008	223.46	\N
1279	Kepler-1978 b	7.61	2.67	\N	10.84969477	f	0	\N	676	\N	\N	\N	f	f	2026-05-09 16:45:37.098764+00	2026-05-09 16:45:37.098766+00	t	Kepler-1978	Transit	2023	2822.92	\N
1280	HD 12661 b	772.3269	13.3	\N	262.70862	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098768+00	2026-05-09 16:45:37.098768+00	t	HD 12661	Radial Velocity	2000	123.44	\N
1281	WASP-11 b	251.0857	12.44199	\N	3.72247	f	0	\N	992	\N	\N	\N	f	f	2026-05-09 16:45:37.098771+00	2026-05-09 16:45:37.098772+00	t	WASP-11	Transit	2008	406.81	\N
1282	WASP-192 b	731.009	13.78707	\N	2.8786765	f	0	\N	1620	\N	\N	\N	f	f	2026-05-09 16:45:37.098774+00	2026-05-09 16:45:37.098775+00	t	WASP-192	Transit	2019	1659.76	\N
1283	WASP-44 b	276.5121	12.3299	\N	2.423804	f	0	\N	1337	\N	\N	\N	f	f	2026-05-09 16:45:37.098777+00	2026-05-09 16:45:37.098778+00	t	WASP-44	Transit	2011	1188.88	\N
1284	HAT-P-5 b	311.4734	13.56289	\N	2.78849	f	0	\N	1517	\N	\N	\N	f	f	2026-05-09 16:45:37.098781+00	2026-05-09 16:45:37.098782+00	t	HAT-P-5	Transit	2007	989.35	\N
1285	HAT-P-8 b	406.8224	15.6926	\N	3.07634	f	0	\N	1713	\N	\N	\N	f	f	2026-05-09 16:45:37.098784+00	2026-05-09 16:45:37.098785+00	t	HAT-P-8	Transit	2008	689.99	\N
1286	HD 33844 b	638.8383	13.4	\N	551.40002	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098787+00	2026-05-09 16:45:37.098788+00	t	HD 33844	Radial Velocity	2015	345	\N
1287	Kepler-139 f	36	6.67	\N	355	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.09879+00	2026-05-09 16:45:37.098791+00	t	Kepler-139	Transit Timing Variations	2025	1275.39	\N
1288	TOI-836 b	4.53	1.704	\N	3.81673	f	0	\N	871	\N	\N	\N	f	f	2026-05-09 16:45:37.098793+00	2026-05-09 16:45:37.098794+00	t	TOI-836	Transit	2023	89.7	\N
1289	TOI-1246 b	8.1	3.01	\N	4.30744	f	0	\N	955	\N	\N	\N	f	f	2026-05-09 16:45:37.098797+00	2026-05-09 16:45:37.098798+00	t	TOI-1246	Transit	2022	552.58	\N
1290	Kepler-1849 b	6.29	2.38685349	\N	57.29290009	f	0	\N	355	\N	\N	\N	f	f	2026-05-09 16:45:37.0988+00	2026-05-09 16:45:37.098802+00	t	Kepler-1849	Transit	2021	2060.93	\N
1291	Kepler-2001 c	3.97	1.82	\N	14.092583189	f	0	\N	597	\N	\N	\N	f	f	2026-05-09 16:45:37.098804+00	2026-05-09 16:45:37.098805+00	t	Kepler-2001	Transit	2023	2532.76	\N
1292	DMPP-1 e	4.13	1.86	\N	5.516	f	0	\N	1314	\N	\N	\N	f	f	2026-05-09 16:45:37.098807+00	2026-05-09 16:45:37.098808+00	t	DMPP-1	Radial Velocity	2019	203.97	\N
1293	K2-403 b	24.6	5.333	\N	33.589979	f	0	\N	949	\N	\N	\N	f	f	2026-05-09 16:45:37.098811+00	2026-05-09 16:45:37.098812+00	t	K2-403	Transit	2022	804.3	\N
1294	TOI-5789 e	11.61	3.43	\N	62.98	f	0	\N	424	\N	\N	\N	f	f	2026-05-09 16:45:37.098815+00	2026-05-09 16:45:37.098816+00	t	TOI-5789	Radial Velocity	2026	66.73	\N
1295	rho CrB b	347.995	13.7	\N	39.849	f	0	\N	614	\N	\N	\N	f	f	2026-05-09 16:45:37.098819+00	2026-05-09 16:45:37.09882+00	t	rho CrB	Radial Velocity	1997	56.97	\N
1296	HD 191939 c	8	3.195	\N	28.579743	f	0	\N	600	\N	\N	\N	f	f	2026-05-09 16:45:37.098823+00	2026-05-09 16:45:37.098825+00	t	HD 191939	Transit	2020	174.85	\N
1297	DMPP-6 b	5.8	2.28	\N	7.6027	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098829+00	2026-05-09 16:45:37.09883+00	t	DMPP-6	Radial Velocity	2026	178.18	\N
1298	Kepler-315 c	16.1	4.15	\N	265.469335	f	0	\N	291	\N	\N	\N	f	f	2026-05-09 16:45:37.098833+00	2026-05-09 16:45:37.098835+00	t	Kepler-315	Transit	2014	3785.46	\N
1299	Qatar-10 b	233.92288	17.295487	\N	1.645321	f	0	\N	1955	\N	\N	\N	f	f	2026-05-09 16:45:37.098837+00	2026-05-09 16:45:37.098839+00	t	Qatar-10	Transit	2019	1823.43	\N
1300	Gliese 12 b	0.95	0.93	\N	12.761418	f	0	\N	314.6	\N	\N	\N	f	f	2026-05-09 16:45:37.098842+00	2026-05-09 16:45:37.098844+00	t	Gliese 12	Transit	2024	39.82	\N
1301	HD 209458 b	232.0159	15.58051	\N	3.52474859	f	0	\N	1459	\N	\N	\N	f	f	2026-05-09 16:45:37.098849+00	2026-05-09 16:45:37.098851+00	t	HD 209458	Radial Velocity	1999	157.54	\N
1302	Kepler-1991 b	2.76	1.47	\N	13.26079792	f	0	\N	760	\N	\N	\N	f	f	2026-05-09 16:45:37.098855+00	2026-05-09 16:45:37.098857+00	t	Kepler-1991	Transit	2023	2791.31	\N
1303	Kepler-1995 b	16.9	4.28	\N	73.7578875	f	0	\N	375	\N	\N	\N	f	f	2026-05-09 16:45:37.09886+00	2026-05-09 16:45:37.098862+00	t	Kepler-1995	Transit	2023	1941.71	\N
1304	Kepler-1987 e	4.35	1.92	\N	8.74292005	f	0	\N	643	\N	\N	\N	f	f	2026-05-09 16:45:37.098865+00	2026-05-09 16:45:37.098867+00	t	Kepler-1987	Transit	2023	1942.86	\N
1305	KELT-3 b	616.5902	17.48604	\N	2.70339	f	0	\N	1816	\N	\N	\N	f	f	2026-05-09 16:45:37.09887+00	2026-05-09 16:45:37.098872+00	t	KELT-3	Transit	2013	685.75	\N
1306	Kepler-417 c	7.7	2.69	\N	15.943	f	0	\N	616	\N	\N	\N	f	f	2026-05-09 16:45:37.098875+00	2026-05-09 16:45:37.098876+00	t	Kepler-417	Transit Timing Variations	2014	3176.72	\N
1307	KMT-2017-BLG-1146L b	230	14	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.09888+00	2026-05-09 16:45:37.098881+00	t	KMT-2017-BLG-1146L	Microlensing	2019	21200.14	\N
1308	Kepler-1213 b	1.81	1.19	\N	5.34982412	f	0	\N	1156	\N	\N	\N	f	f	2026-05-09 16:45:37.098884+00	2026-05-09 16:45:37.098886+00	t	Kepler-1213	Transit	2016	2634.73	\N
1309	Kepler-1020 b	5.82	2.28	\N	96.9151496	f	0	\N	325	\N	\N	\N	f	f	2026-05-09 16:45:37.098889+00	2026-05-09 16:45:37.09889+00	t	Kepler-1020	Transit	2016	1354.72	\N
1310	Kepler-682 b	42.6	7.37	\N	12.611906672	f	0	\N	753	\N	\N	\N	f	f	2026-05-09 16:45:37.098894+00	2026-05-09 16:45:37.098895+00	t	Kepler-682	Transit	2016	6455.44	\N
1311	K2-194 b	12.9	3.64229858	\N	39.721386	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098898+00	2026-05-09 16:45:37.0989+00	t	K2-194	Transit	2018	2053.18	\N
1312	Kepler-1993 b	16.1	4.15	\N	26.6565737	f	0	\N	903	\N	\N	\N	f	f	2026-05-09 16:45:37.098903+00	2026-05-09 16:45:37.098904+00	t	Kepler-1993	Transit	2023	3365.64	\N
1313	Kepler-579 b	4.66	2	\N	9.66857723	f	0	\N	730	\N	\N	\N	f	f	2026-05-09 16:45:37.098908+00	2026-05-09 16:45:37.098909+00	t	Kepler-579	Transit	2016	1731.12	\N
1314	HD 216770 b	181.1631	14.1	\N	118.45	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098912+00	2026-05-09 16:45:37.098914+00	t	HD 216770	Radial Velocity	2003	119.58	\N
1315	Kepler-1074 b	2.1	1.25	\N	5.94566534	f	0	\N	568	\N	\N	\N	f	f	2026-05-09 16:45:37.098917+00	2026-05-09 16:45:37.098918+00	t	Kepler-1074	Transit	2016	818.05	\N
1316	WASP-133 b	368.6828	13.56289	\N	2.176423	f	0	\N	1790	\N	\N	\N	f	f	2026-05-09 16:45:37.098922+00	2026-05-09 16:45:37.098923+00	t	WASP-133	Transit	2016	1823.49	\N
1317	Kepler-1126 c	2.7	1.45	\N	199.66876	f	0	\N	305	\N	\N	\N	f	f	2026-05-09 16:45:37.098926+00	2026-05-09 16:45:37.098928+00	t	Kepler-1126	Transit	2023	2073.49	\N
1318	TOI-1224 b	5.08	2.104	\N	4.1782745	f	0	\N	541	\N	\N	\N	f	f	2026-05-09 16:45:37.098931+00	2026-05-09 16:45:37.098933+00	t	TOI-1224	Transit	2024	121.76	\N
1319	TOI-564 b	464.98529	11.43318	\N	1.651144	f	0	\N	1714	\N	\N	\N	f	f	2026-05-09 16:45:37.098936+00	2026-05-09 16:45:37.098937+00	t	TOI-564	Transit	2020	650.95	\N
1320	Kepler-1656 c	126.4	14	\N	1919	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098941+00	2026-05-09 16:45:37.098942+00	t	Kepler-1656	Radial Velocity	2022	606.24	\N
1321	TOI-1410 c	27	5.63	\N	47.56	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098945+00	2026-05-09 16:45:37.098947+00	t	TOI-1410	Radial Velocity	2024	237.28	\N
1322	HATS-55 b	292.72143	14.022459	\N	4.2042001	f	0	\N	1367	\N	\N	\N	f	f	2026-05-09 16:45:37.09895+00	2026-05-09 16:45:37.098952+00	t	HATS-55	Transit	2019	1989.02	\N
1323	WASP-183 b	159.55066	16.47723	\N	4.1117771	f	0	\N	1111	\N	\N	\N	f	f	2026-05-09 16:45:37.098955+00	2026-05-09 16:45:37.098956+00	t	WASP-183	Transit	2019	1061.24	\N
1324	HD 45184 b	12.19	3.52	\N	5.8854	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098959+00	2026-05-09 16:45:37.098961+00	t	HD 45184	Radial Velocity	2019	71.6	\N
1325	Kepler-700 b	30	5.99	\N	80.8720639	f	0	\N	452	\N	\N	\N	f	f	2026-05-09 16:45:37.098964+00	2026-05-09 16:45:37.098966+00	t	Kepler-700	Transit	2016	4865.46	\N
1326	WASP-170 b	508.528	12.285064	\N	2.34478022	f	0	\N	1422	\N	\N	\N	f	f	2026-05-09 16:45:37.098969+00	2026-05-09 16:45:37.09897+00	t	WASP-170	Transit	2018	996.74	\N
1327	TOI-1693 b	2.57	1.41	\N	1.7666957	f	0	\N	764	\N	\N	\N	f	f	2026-05-09 16:45:37.098974+00	2026-05-09 16:45:37.098975+00	t	TOI-1693	Transit	2022	100.44	\N
1328	OGLE-2018-BLG-0298L b	44.49597698	7.56	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098978+00	2026-05-09 16:45:37.09898+00	t	OGLE-2018-BLG-0298L	Microlensing	2022	21330.6	\N
1329	OGLE-2013-BLG-0102L b	4100	12.3	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.098983+00	2026-05-09 16:45:37.098984+00	t	OGLE-2013-BLG-0102L	Microlensing	2014	9915.14	\N
1330	Kepler-948 b	4.08	1.85	\N	7.76846622	f	0	\N	841	\N	\N	\N	f	f	2026-05-09 16:45:37.098988+00	2026-05-09 16:45:37.098989+00	t	Kepler-948	Transit	2016	2831.09	\N
1331	TOI-1472 b	18.05	4.058	\N	6.36338574	f	0	\N	891	\N	\N	\N	f	f	2026-05-09 16:45:37.098992+00	2026-05-09 16:45:37.098994+00	t	TOI-1472	Transit	2024	397.39	\N
1332	Kepler-1894 c	1.92	1.21	\N	5.05368985	f	0	\N	1007	\N	\N	\N	f	f	2026-05-09 16:45:37.098997+00	2026-05-09 16:45:37.098998+00	t	Kepler-1894	Transit	2023	3050.18	\N
1333	TOI-532 b	61.5	5.82	\N	2.3266508	f	0	\N	867	\N	\N	\N	f	f	2026-05-09 16:45:37.099002+00	2026-05-09 16:45:37.099003+00	t	TOI-532	Transit	2021	440.46	\N
1334	Kepler-1996 b	5.73	2.26	\N	32.376183	f	0	\N	392	\N	\N	\N	f	f	2026-05-09 16:45:37.099006+00	2026-05-09 16:45:37.099008+00	t	Kepler-1996	Transit	2023	1436.92	\N
1335	LP 714-47 b	30.8	4.7	\N	4.052037	f	0	\N	700	\N	\N	\N	f	f	2026-05-09 16:45:37.099011+00	2026-05-09 16:45:37.099012+00	t	LP 714-47	Transit	2020	171.61	\N
1336	TOI-921 b	12.2	3.53409617	\N	5.12871907628	f	0	\N	951	\N	\N	\N	f	f	2026-05-09 16:45:37.099016+00	2026-05-09 16:45:37.099017+00	t	TOI-921	Transit	2026	958.95	\N
1337	Kepler-1278 b	1.01	1.01	\N	3.23941344	f	0	\N	1213	\N	\N	\N	f	f	2026-05-09 16:45:37.09902+00	2026-05-09 16:45:37.099022+00	t	Kepler-1278	Transit	2016	2900.92	\N
1338	HD 106270 b	3623.2438398	12.4	\N	1888	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.099025+00	2026-05-09 16:45:37.099026+00	t	HD 106270	Radial Velocity	2011	305.96	\N
1339	Kepler-1977 b	3.39	1.66	\N	4.53702121	f	0	\N	798	\N	\N	\N	f	f	2026-05-09 16:45:37.09903+00	2026-05-09 16:45:37.099031+00	t	Kepler-1977	Transit	2023	1933.16	\N
1340	HATS-10 b	167.17858	10.861521	\N	3.312846	f	0	\N	1407	\N	\N	\N	f	f	2026-05-09 16:45:37.099034+00	2026-05-09 16:45:37.099036+00	t	HATS-10	Transit	2015	1744.57	\N
1341	Kepler-1801 c	8.8	2.91	\N	116.583183	f	0	\N	371	\N	\N	\N	f	f	2026-05-09 16:45:37.099039+00	2026-05-09 16:45:37.09904+00	t	Kepler-1801	Transit	2023	2737.53	\N
1342	Kepler-472 b	10.5	3.22	\N	4.176255514	f	0	\N	876	\N	\N	\N	f	f	2026-05-09 16:45:37.099044+00	2026-05-09 16:45:37.099045+00	t	Kepler-472	Transit	2016	1000	\N
1343	Kepler-1129 b	9.06	2.96	\N	24.3397804	f	0	\N	737	\N	\N	\N	f	f	2026-05-09 16:45:37.099048+00	2026-05-09 16:45:37.09905+00	t	Kepler-1129	Transit	2016	3861.3	\N
1344	Kepler-1275 b	2.79	1.48	\N	3.65691115	f	0	\N	1368	\N	\N	\N	f	f	2026-05-09 16:45:37.099053+00	2026-05-09 16:45:37.099054+00	t	Kepler-1275	Transit	2016	3763.78	\N
1345	Kepler-1052 c	5.9	2.3	\N	180.921729	f	0	\N	302	\N	\N	\N	f	f	2026-05-09 16:45:37.099058+00	2026-05-09 16:45:37.099059+00	t	Kepler-1052	Transit	2023	3077.1	\N
1346	HATS-61 b	1080.622	13.394755	\N	7.817953	f	0	\N	1226.1	\N	\N	\N	f	f	2026-05-09 16:45:37.099062+00	2026-05-09 16:45:37.099064+00	t	HATS-61	Transit	2018	2217.08	\N
1347	Kepler-656 c	2.57	1.41	\N	5.25449393	f	0	\N	975	\N	\N	\N	f	f	2026-05-09 16:45:37.099067+00	2026-05-09 16:45:37.099068+00	t	Kepler-656	Transit	2023	2903.94	\N
1348	Kepler-1471 c	4.19	1.88	\N	11.6044881	f	0	\N	841	\N	\N	\N	f	f	2026-05-09 16:45:37.099071+00	2026-05-09 16:45:37.099073+00	t	Kepler-1471	Transit	2023	3192.02	\N
1349	Kepler-60 c	3.85	1.9	\N	8.9187	f	0	\N	1023	\N	\N	\N	f	f	2026-05-09 16:45:37.099076+00	2026-05-09 16:45:37.099078+00	t	Kepler-60	Transit	2012	3343.43	\N
1350	Kepler-784 c	3.02	1.55	\N	17.157236	f	0	\N	844	\N	\N	\N	f	f	2026-05-09 16:45:37.099081+00	2026-05-09 16:45:37.099082+00	t	Kepler-784	Transit	2023	4252.16	\N
1351	WASP-49 b	117.5971	12.44199	\N	2.78174	f	0	\N	1400	\N	\N	\N	f	f	2026-05-09 16:45:37.099085+00	2026-05-09 16:45:37.099087+00	t	WASP-49	Transit	2012	634.55	\N
1352	WASP-15 b	171.6282	15.80469	\N	3.7521	f	0	\N	1676	\N	\N	\N	f	f	2026-05-09 16:45:37.09909+00	2026-05-09 16:45:37.099092+00	t	WASP-15	Transit	2009	920.06	\N
1353	Kepler-1869 c	0.33	0.74	\N	1.716828304	f	0	\N	1455	\N	\N	\N	f	f	2026-05-09 16:45:37.099095+00	2026-05-09 16:45:37.099096+00	t	Kepler-1869	Transit	2023	368.64	\N
1354	Kepler-1987 c	2.33	1.33	\N	3.64830183	f	0	\N	860	\N	\N	\N	f	f	2026-05-09 16:45:37.0991+00	2026-05-09 16:45:37.099101+00	t	Kepler-1987	Transit	2023	1942.86	\N
1355	Kepler-1669 d	1.98	1.22	\N	4.72941177	f	0	\N	669	\N	\N	\N	f	f	2026-05-09 16:45:37.099104+00	2026-05-09 16:45:37.099106+00	t	Kepler-1669	Transit	2023	1772.48	\N
1356	Kepler-1870 b	5.07	2.10143764	\N	3.606940031	f	0	\N	1046	\N	\N	\N	f	f	2026-05-09 16:45:37.099109+00	2026-05-09 16:45:37.09911+00	t	Kepler-1870	Transit	2021	1328.16	\N
1357	K2-8 c	6.39	2.41	\N	5.06416	f	0	\N	801	\N	\N	\N	f	f	2026-05-09 16:45:37.099114+00	2026-05-09 16:45:37.099115+00	t	K2-8	Transit	2016	1316.08	\N
1358	Kepler-1339 b	0.285	0.71	\N	1.341555127	f	0	\N	1642	\N	\N	\N	f	f	2026-05-09 16:45:37.099118+00	2026-05-09 16:45:37.09912+00	t	Kepler-1339	Transit	2016	1210.2	\N
1359	Kepler-865 c	0.64	0.89	\N	6.20920207	f	0	\N	914	\N	\N	\N	f	f	2026-05-09 16:45:37.099123+00	2026-05-09 16:45:37.099124+00	t	Kepler-865	Transit	2023	1911.72	\N
1360	Kepler-2000 c	3.09	1.57	\N	20.6180348	f	0	\N	359	\N	\N	\N	f	f	2026-05-09 16:45:37.099128+00	2026-05-09 16:45:37.099129+00	t	Kepler-2000	Transit	2023	1045.62	\N
1361	Kepler-864 c	3.26	1.62	\N	2.42150341	f	0	\N	1532	\N	\N	\N	f	f	2026-05-09 16:45:37.099132+00	2026-05-09 16:45:37.099134+00	t	Kepler-864	Transit	2023	6597.81	\N
1362	Kepler-1905 b	2.69	1.4460734	\N	3.42392993	f	0	\N	1212	\N	\N	\N	f	f	2026-05-09 16:45:37.099137+00	2026-05-09 16:45:37.099138+00	t	Kepler-1905	Transit	2021	3429.63	\N
1363	Kepler-230 c	4.82	2.04	\N	91.773242	f	0	\N	359	\N	\N	\N	f	f	2026-05-09 16:45:37.099142+00	2026-05-09 16:45:37.099143+00	t	Kepler-230	Transit	2014	2416.01	\N
1364	Kepler-1839 b	4.46	1.9493759	\N	5.056759834	f	0	\N	1049	\N	\N	\N	f	f	2026-05-09 16:45:37.099146+00	2026-05-09 16:45:37.099148+00	t	Kepler-1839	Transit	2021	3707.09	\N
1365	Kepler-694 b	8.25	2.8	\N	6.365841612	f	0	\N	914	\N	\N	\N	f	f	2026-05-09 16:45:37.099151+00	2026-05-09 16:45:37.099153+00	t	Kepler-694	Transit	2016	3336.77	\N
1366	K2-32 e	2.1	1.212	\N	4.34934	f	0	\N	1066	\N	\N	\N	f	f	2026-05-09 16:45:37.099156+00	2026-05-09 16:45:37.099157+00	t	K2-32	Transit	2019	514.29	\N
1367	Kepler-1984 b	37.3	6.81	\N	1.992812339	f	0	\N	675	\N	\N	\N	f	f	2026-05-09 16:45:37.099161+00	2026-05-09 16:45:37.099162+00	t	Kepler-1984	Transit	2023	\N	\N
1368	Kepler-1987 b	2.04	1.23	\N	2.345863002	f	0	\N	997	\N	\N	\N	f	f	2026-05-09 16:45:37.099165+00	2026-05-09 16:45:37.099167+00	t	Kepler-1987	Transit	2023	1942.86	\N
1369	Kepler-919 b	5.69	2.25	\N	11.04603384	f	0	\N	869	\N	\N	\N	f	f	2026-05-09 16:45:37.099171+00	2026-05-09 16:45:37.099173+00	t	Kepler-919	Transit	2016	3652.52	\N
1370	Kepler-1181 c	4.01	1.83	\N	8.93484887	f	0	\N	1124	\N	\N	\N	f	f	2026-05-09 16:45:37.099177+00	2026-05-09 16:45:37.099179+00	t	Kepler-1181	Transit	2023	3060.7	\N
1371	Kepler-1858 b	6.44	2.42168247	\N	88.07160187	f	0	\N	330	\N	\N	\N	f	f	2026-05-09 16:45:37.09918+00	2026-05-09 16:45:37.099181+00	t	Kepler-1858	Transit	2021	2717.06	\N
1372	Kepler-975 c	80.2	10.69	\N	5.05821338	f	0	\N	1168	\N	\N	\N	f	f	2026-05-09 16:45:37.099183+00	2026-05-09 16:45:37.099184+00	t	Kepler-975	Transit	2023	1389.71	\N
1373	HD 95872 b	1188.6842	13	\N	4375	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.099187+00	2026-05-09 16:45:37.099188+00	t	HD 95872	Radial Velocity	2015	235.55	\N
1374	Kepler-411 b	25.6	2.401	\N	3.005156	f	0	\N	1138	\N	\N	\N	f	f	2026-05-09 16:45:37.099189+00	2026-05-09 16:45:37.09919+00	t	Kepler-411	Transit	2013	501.22	\N
1375	NGTS-16 b	211.99154747	14.57167491	\N	4.84532	f	0	\N	1177	\N	\N	\N	f	f	2026-05-09 16:45:37.099194+00	2026-05-09 16:45:37.099196+00	t	NGTS-16	Transit	2021	2929.43	\N
1376	K2-31 b	563.83042	11.88154	\N	1.25785	f	0	\N	1688	\N	\N	\N	f	f	2026-05-09 16:45:37.099198+00	2026-05-09 16:45:37.0992+00	t	K2-31	Transit	2016	360.49	\N
1377	K2-39 b	28.6047	6.27704	\N	4.60543	f	0	\N	1670	\N	\N	\N	f	f	2026-05-09 16:45:37.099205+00	2026-05-09 16:45:37.099206+00	t	K2-39	Transit	2016	1002.83	\N
1378	HIP 38594 c	48.4	7.94	\N	3477.768	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.099207+00	2026-05-09 16:45:37.099208+00	t	HIP 38594	Radial Velocity	2020	58.02	\N
1379	Kepler-144 b	2.33	1.33	\N	5.885273	f	0	\N	1253	\N	\N	\N	f	f	2026-05-09 16:45:37.099209+00	2026-05-09 16:45:37.09921+00	t	Kepler-144	Transit	2014	1255.43	\N
1380	Kepler-1121 b	4.31	1.91	\N	13.15141081	f	0	\N	1008	\N	\N	\N	f	f	2026-05-09 16:45:37.099211+00	2026-05-09 16:45:37.099212+00	t	Kepler-1121	Transit	2016	1572.23	\N
1381	HD 10442 b	472.61321	13.6	\N	1032.3	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.099213+00	2026-05-09 16:45:37.099214+00	t	HD 10442	Radial Velocity	2014	441.53	\N
1382	Kepler-402 d	2.48	1.38	\N	8.921099	f	0	\N	1006	\N	\N	\N	f	f	2026-05-09 16:45:37.099215+00	2026-05-09 16:45:37.099216+00	t	Kepler-402	Transit	2014	2039.58	\N
1383	TOI-4515 b	637	12.17	\N	15.266446	f	0	\N	705	\N	\N	\N	f	f	2026-05-09 16:45:37.099217+00	2026-05-09 16:45:37.099218+00	t	TOI-4515	Transit	2024	631.11	\N
1384	HAT-P-41 b	378.2177	22.97845	\N	2.69405	f	0	\N	1941	\N	\N	\N	f	f	2026-05-09 16:45:37.099219+00	2026-05-09 16:45:37.09922+00	t	HAT-P-41	Transit	2012	1135.63	\N
1385	AU Mic c	14.46	2.79	\N	18.859023	f	0	\N	424.7	\N	\N	\N	f	f	2026-05-09 16:45:37.099221+00	2026-05-09 16:45:37.099222+00	t	AU Mic	Transit	2021	31.71	\N
1386	HAT-P-7 b	584.8072	16.92559	\N	2.20474	f	0	\N	2733	\N	\N	\N	f	f	2026-05-09 16:45:37.099227+00	2026-05-09 16:45:37.099228+00	t	HAT-P-7	Transit	2008	1112.45	\N
1387	AU Mic b	8.99	4.79	\N	8.463446	f	0	\N	554.8	\N	\N	\N	f	f	2026-05-09 16:45:37.099231+00	2026-05-09 16:45:37.099233+00	t	AU Mic	Transit	2020	31.71	\N
1388	WASP-63 b	117.5971	15.80469	\N	4.37808	f	0	\N	1469.91	\N	\N	\N	f	f	2026-05-09 16:45:37.099238+00	2026-05-09 16:45:37.099239+00	t	WASP-63	Transit	2012	948.08	\N
1389	TOI-3540 A b	375.03752026	23.53885947	\N	3.119999	f	0	\N	1498	\N	\N	\N	f	f	2026-05-09 16:45:37.09924+00	2026-05-09 16:45:37.099241+00	t	TOI-3540 A	Transit	2022	\N	\N
1390	HATS-62 b	56.89157	11.825495	\N	3.2768837	f	0	\N	1237	\N	\N	\N	f	f	2026-05-09 16:45:37.099242+00	2026-05-09 16:45:37.099243+00	t	HATS-62	Transit	2018	1706.01	\N
1391	Kepler-1690 b	8.3	2.81109223	\N	234.636	f	0	\N	267	\N	\N	\N	f	f	2026-05-09 16:45:37.099244+00	2026-05-09 16:45:37.099245+00	t	Kepler-1690	Transit	2020	2295.45	\N
1392	Kepler-1118 b	7.95	2.74	\N	38.6715075	f	0	\N	502	\N	\N	\N	f	f	2026-05-09 16:45:37.099246+00	2026-05-09 16:45:37.099246+00	t	Kepler-1118	Transit	2016	2897.33	\N
1393	Kepler-150 b	2.1	1.25	\N	3.428054	f	0	\N	1131	\N	\N	\N	f	f	2026-05-09 16:45:37.099248+00	2026-05-09 16:45:37.099249+00	t	Kepler-150	Transit	2014	2906.35	\N
1394	Kepler-1841 b	2.82	1.48912557	\N	25.88599968	f	0	\N	542	\N	\N	\N	f	f	2026-05-09 16:45:37.09925+00	2026-05-09 16:45:37.099251+00	t	Kepler-1841	Transit	2021	2060.33	\N
1395	Kepler-620 b	11	3.32	\N	12.91375431	f	0	\N	849	\N	\N	\N	f	f	2026-05-09 16:45:37.099252+00	2026-05-09 16:45:37.099253+00	t	Kepler-620	Transit	2016	4420.33	\N
1396	HD 105618 b	25.42627256	5.44	\N	10.02245	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.099257+00	2026-05-09 16:45:37.099259+00	t	HD 105618	Radial Velocity	2022	228.58	\N
1397	KMT-2016-BLG-1836L b	700	13.3	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.099261+00	2026-05-09 16:45:37.099262+00	t	KMT-2016-BLG-1836L	Microlensing	2019	23157.08	\N
1398	NGTS-12 b	66.10864	11.747032	\N	7.532806	f	0	\N	1257	\N	\N	\N	f	f	2026-05-09 16:45:37.099264+00	2026-05-09 16:45:37.099265+00	t	NGTS-12	Transit	2020	1456.1	\N
1399	Kepler-1669 b	8.15	2.78043818	\N	9.51216	f	0	\N	530	\N	\N	\N	f	f	2026-05-09 16:45:37.099267+00	2026-05-09 16:45:37.099268+00	t	Kepler-1669	Transit	2020	1772.48	\N
1400	K2-341 b	10.4	3.21	\N	36.552551	f	0	\N	598	\N	\N	\N	f	f	2026-05-09 16:45:37.09927+00	2026-05-09 16:45:37.099271+00	t	K2-341	Transit	2021	1374.45	\N
1401	TOI-262 b	4.94	2.07	\N	11.14529	f	0	\N	584	\N	\N	\N	f	f	2026-05-09 16:45:37.099275+00	2026-05-09 16:45:37.099277+00	t	TOI-262	Transit	2023	143.29	\N
1402	Kepler-347 d	9.48	3.04	\N	85.517344	f	0	\N	482	\N	\N	\N	f	f	2026-05-09 16:45:37.099279+00	2026-05-09 16:45:37.09928+00	t	Kepler-347	Transit	2023	4236.38	\N
1403	55 Cnc e	7.99	1.875	\N	0.7365474	f	0	\N	1958	\N	\N	\N	f	f	2026-05-09 16:45:37.099283+00	2026-05-09 16:45:37.099285+00	t	55 Cnc	Radial Velocity	2004	41.05	\N
1404	K2-329 b	82.6358	8.675766	\N	12.4551225	f	0	\N	650	\N	\N	\N	f	f	2026-05-09 16:45:37.099289+00	2026-05-09 16:45:37.09929+00	t	K2-329	Transit	2020	760.72	\N
1405	Kepler-405 b	4.98	2.08	\N	10.613839	f	0	\N	785	\N	\N	\N	f	f	2026-05-09 16:45:37.099291+00	2026-05-09 16:45:37.099292+00	t	Kepler-405	Transit	2014	3473.82	\N
1406	HIP 114933 b	616.58710958	13.4	\N	1481.6	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.099293+00	2026-05-09 16:45:37.099293+00	t	HIP 114933	Radial Velocity	2021	331.92	\N
1407	NGTS-18 b	129.99181846	13.56286665	\N	3.05125	f	0	\N	1381	\N	\N	\N	f	f	2026-05-09 16:45:37.099295+00	2026-05-09 16:45:37.099295+00	t	NGTS-18	Transit	2021	3575.29	\N
1408	Kepler-129 b	20	2.4	\N	15.79	f	0	\N	910	\N	\N	\N	f	f	2026-05-09 16:45:37.099297+00	2026-05-09 16:45:37.099297+00	t	Kepler-129	Transit	2014	1333.47	\N
1409	GJ 3082 b	8.2	2.79	\N	11.949	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.099298+00	2026-05-09 16:45:37.099299+00	t	GJ 3082	Radial Velocity	2020	54.2	\N
1410	HD 136352 b	4.72	1.664	\N	11.57797	f	0	\N	905	\N	\N	\N	f	f	2026-05-09 16:45:37.0993+00	2026-05-09 16:45:37.099301+00	t	HD 136352	Radial Velocity	2019	47.89	\N
1411	HD 221420 b	7278.2705203	12	\N	10090	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.099302+00	2026-05-09 16:45:37.099303+00	t	HD 221420	Radial Velocity	2019	101.57	\N
1412	HD 136352 c	11.24	2.916	\N	27.59221	f	0	\N	677	\N	\N	\N	f	f	2026-05-09 16:45:37.099304+00	2026-05-09 16:45:37.099305+00	t	HD 136352	Radial Velocity	2019	47.89	\N
1413	Kepler-1723 b	8.65	2.88046569	\N	39.75289917	f	0	\N	568	\N	\N	\N	f	f	2026-05-09 16:45:37.099306+00	2026-05-09 16:45:37.099307+00	t	Kepler-1723	Transit	2021	2646.03	\N
1414	Kepler-1176 b	6.57	2.45	\N	24.1738579	f	0	\N	595	\N	\N	\N	f	f	2026-05-09 16:45:37.099308+00	2026-05-09 16:45:37.099309+00	t	Kepler-1176	Transit	2016	2820.27	\N
1415	Kepler-1783 b	2.3	1.31946731	\N	8.277440071	f	0	\N	1088	\N	\N	\N	f	f	2026-05-09 16:45:37.09931+00	2026-05-09 16:45:37.099311+00	t	Kepler-1783	Transit	2021	861.31	\N
1416	TOI-6255 b	1.44	1.079	\N	0.23818244	f	0	\N	1256.46	\N	\N	\N	f	f	2026-05-09 16:45:37.099312+00	2026-05-09 16:45:37.099312+00	t	TOI-6255	Transit	2024	66.26	\N
1417	TOI-157 b	375.0394	14.414774	\N	2.0845435	f	0	\N	1588	\N	\N	\N	f	f	2026-05-09 16:45:37.099314+00	2026-05-09 16:45:37.099314+00	t	TOI-157	Transit	2020	1160.08	\N
1418	OGLE-2017-BLG-0640L b	514.88201934	13.5	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.099316+00	2026-05-09 16:45:37.099316+00	t	OGLE-2017-BLG-0640L	Microlensing	2024	21624.14	\N
1419	OGLE-2013-BLG-1761L b	860	13.2	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.099317+00	2026-05-09 16:45:37.099318+00	t	OGLE-2013-BLG-1761L	Microlensing	2018	22504.76	\N
1420	OGLE-2017-BLG-1099L b	959.84178914	13.1	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.099319+00	2026-05-09 16:45:37.09932+00	t	OGLE-2017-BLG-1099L	Microlensing	2021	23646.31	\N
1421	Kepler-1421 b	0.749	0.93	\N	6.9131112	f	0	\N	1209	\N	\N	\N	f	f	2026-05-09 16:45:37.099321+00	2026-05-09 16:45:37.099322+00	t	Kepler-1421	Transit	2016	2555.11	\N
1422	Kepler-1442 b	14.7	3.93	\N	81.4162941	f	0	\N	522	\N	\N	\N	f	f	2026-05-09 16:45:37.099323+00	2026-05-09 16:45:37.099324+00	t	Kepler-1442	Transit	2016	1985.25	\N
1423	Kepler-414 b	3.5	1.71	\N	4.7	f	0	\N	1024	\N	\N	\N	f	f	2026-05-09 16:45:37.099325+00	2026-05-09 16:45:37.099326+00	t	Kepler-414	Transit Timing Variations	2014	1348.52	\N
1424	HD 13808 c	9.96	3.13	\N	53.753	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.099327+00	2026-05-09 16:45:37.099328+00	t	HD 13808	Radial Velocity	2021	92.08	\N
1425	TOI-1333 b	753.2571	15.647764	\N	4.720219	f	0	\N	1679	\N	\N	\N	f	f	2026-05-09 16:45:37.099329+00	2026-05-09 16:45:37.09933+00	t	TOI-1333	Transit	2021	653.92	\N
1426	HD 13808 b	11.2	3.35	\N	14.1815	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.099331+00	2026-05-09 16:45:37.099332+00	t	HD 13808	Radial Velocity	2021	92.08	\N
1427	HD 136352 d	8.82	2.562	\N	107.245	f	0	\N	431	\N	\N	\N	f	f	2026-05-09 16:45:37.099333+00	2026-05-09 16:45:37.099334+00	t	HD 136352	Radial Velocity	2019	47.89	\N
1428	K2-185 b	1.6	1.15	\N	10.616384	f	0	\N	809	\N	\N	\N	f	f	2026-05-09 16:45:37.099335+00	2026-05-09 16:45:37.099335+00	t	K2-185	Transit	2018	875.26	\N
1429	K2-59 b	6.39	2.41	\N	20.6921	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.099337+00	2026-05-09 16:45:37.099337+00	t	K2-59	Transit	2016	1015.37	\N
1430	Kepler-1976 b	\N	12.21	\N	4.959319244	f	0	\N	1103	\N	\N	\N	f	f	2026-05-09 16:45:37.099339+00	2026-05-09 16:45:37.099339+00	t	Kepler-1976	Transit Timing Variations	2023	4287.35	\N
1431	HAT-P-61 b	335.9446262	10.07687365	\N	1.90231289	f	0	\N	1505	\N	\N	\N	f	f	2026-05-09 16:45:37.099341+00	2026-05-09 16:45:37.099341+00	t	HAT-P-61	Transit	2021	1105.15	\N
1432	TOI-849 b	41.8	3.64	\N	0.765548	f	0	\N	1932	\N	\N	\N	f	f	2026-05-09 16:45:37.099343+00	2026-05-09 16:45:37.099343+00	t	TOI-849	Transit	2020	736.24	\N
1433	Kepler-1491 c	6.53	2.44	\N	61.569765	f	0	\N	530	\N	\N	\N	f	f	2026-05-09 16:45:37.099345+00	2026-05-09 16:45:37.099345+00	t	Kepler-1491	Transit	2023	6737.05	\N
1434	Kepler-1834 c	1.98	1.22	\N	0.766691517	f	0	\N	1541	\N	\N	\N	f	f	2026-05-09 16:45:37.099346+00	2026-05-09 16:45:37.099347+00	t	Kepler-1834	Transit	2023	1632.07	\N
1435	Kepler-1518 c	8.75	2.9	\N	9.6310258	f	0	\N	1094	\N	\N	\N	f	f	2026-05-09 16:45:37.099348+00	2026-05-09 16:45:37.099349+00	t	Kepler-1518	Transit	2023	2946.85	\N
1436	TIC 270471727 b	8	2.75029559	\N	10.45623256647	f	0	\N	1147.1	\N	\N	\N	f	f	2026-05-09 16:45:37.09935+00	2026-05-09 16:45:37.099351+00	t	TIC 270471727	Transit	2026	593.94	\N
1437	Kepler-348 c	2.33	1.33	\N	17.265427	f	0	\N	888	\N	\N	\N	f	f	2026-05-09 16:45:37.099352+00	2026-05-09 16:45:37.099353+00	t	Kepler-348	Transit	2014	1861.64	\N
1438	Kepler-1200 b	1.2	1.06	\N	1.118549717	f	0	\N	1174	\N	\N	\N	f	f	2026-05-09 16:45:37.099354+00	2026-05-09 16:45:37.099355+00	t	Kepler-1200	Transit	2016	1920.13	\N
1439	HD 204941 b	73.1009	10.1	\N	1733	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.099356+00	2026-05-09 16:45:37.099357+00	t	HD 204941	Radial Velocity	2011	93.66	\N
1440	HD 68988 c	4776.96095721	12.2	\N	16000	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.099358+00	2026-05-09 16:45:37.099359+00	t	HD 68988	Radial Velocity	2021	198.45	\N
1441	HD 101581 b	0.827	0.956	\N	4.46569	f	0	\N	834	\N	\N	\N	f	f	2026-05-09 16:45:37.09936+00	2026-05-09 16:45:37.099361+00	t	HIP 56998	Transit	2025	41.68	\N
1442	OGLE-2017-BLG-0406L b	130	14.2	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.099362+00	2026-05-09 16:45:37.099363+00	t	OGLE-2017-BLG-0406L	Microlensing	2020	16960.11	\N
1443	KMT-2017-BLG-0428L b	5.59	2.23	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.099364+00	2026-05-09 16:45:37.099365+00	t	KMT-2017-BLG-0428L	Microlensing	2023	17612.42	\N
1444	Kepler-698 b	13.1	3.68	\N	16.32976218	f	0	\N	727	\N	\N	\N	f	f	2026-05-09 16:45:37.099366+00	2026-05-09 16:45:37.099367+00	t	Kepler-698	Transit	2016	6508.67	\N
1445	WASP-121 b	371.85923619	19.52604438	\N	1.27492504	f	0	\N	2409	\N	\N	\N	f	f	2026-05-09 16:45:37.099368+00	2026-05-09 16:45:37.099369+00	t	WASP-121	Transit	2016	880.29	\N
1446	GJ 536 c	5.89	2.3	\N	32.761	f	0	\N	290.5	\N	\N	\N	f	f	2026-05-09 16:45:37.09937+00	2026-05-09 16:45:37.099371+00	t	GJ 536	Radial Velocity	2025	33.95	\N
1447	TOI-663 b	4.45	2.27	\N	2.598902	f	0	\N	674	\N	\N	\N	f	f	2026-05-09 16:45:37.099372+00	2026-05-09 16:45:37.099373+00	t	TOI-663	Transit	2024	209.49	\N
1448	TOI-1259 A b	140.16232749	11.45557828	\N	3.477978	f	0	\N	963	\N	\N	\N	f	f	2026-05-09 16:45:37.099374+00	2026-05-09 16:45:37.099375+00	t	TOI-1259 A	Transit	2021	385.21	\N
1449	Qatar-4 b	1938.763	12.722215	\N	1.8053564	f	0	\N	1385	\N	\N	\N	f	f	2026-05-09 16:45:37.099376+00	2026-05-09 16:45:37.099377+00	t	Qatar-4	Transit	2017	1073.17	\N
1450	K2-113 b	410.0007	12.14	\N	5.817685	f	0	\N	1098	\N	\N	\N	f	f	2026-05-09 16:45:37.099378+00	2026-05-09 16:45:37.099379+00	t	K2-113	Transit	2017	2073.45	\N
1451	TOI-150.01	797.7533	14.067295	\N	5.857487	f	0	\N	1404.5	\N	\N	\N	f	f	2026-05-09 16:45:37.09938+00	2026-05-09 16:45:37.099381+00	t	TOI-150	Transit	2019	1096.75	\N
1452	TOI-2107 b	263.79757781	13.57407563	\N	2.4545467	f	0	\N	1397	\N	\N	\N	f	f	2026-05-09 16:45:37.099382+00	2026-05-09 16:45:37.099383+00	t	TOI-2107	Transit	2024	772.03	\N
1453	Kepler-1321 b	21.5	4.92	\N	11.12830484	f	0	\N	408	\N	\N	\N	f	f	2026-05-09 16:45:37.099384+00	2026-05-09 16:45:37.099385+00	t	Kepler-1321	Transit	2016	2508.62	\N
1454	HD 10180 h	64.4	9.4	\N	2205	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.099386+00	2026-05-09 16:45:37.099387+00	t	HD 10180	Radial Velocity	2010	127.07	\N
1455	HD 7924 b	2058.25676373	\N	\N	5.39792	f	0	\N	825.9	\N	\N	\N	f	f	2026-05-09 16:45:37.099388+00	2026-05-09 16:45:37.099389+00	t	HD 7924	Radial Velocity	2008	55.42	\N
1456	HIP 57274 d	167.4	14.2	\N	431.7	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.09939+00	2026-05-09 16:45:37.099391+00	t	HIP 57274	Radial Velocity	2011	84.35	\N
1457	HD 215152 e	975.41538108	\N	\N	25.1967	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.099392+00	2026-05-09 16:45:37.099392+00	t	HD 215152	Radial Velocity	2018	70.44	\N
1458	KMT-2020-BLG-0414L c	8581.366989	11.9	\N	\N	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.099394+00	2026-05-09 16:45:37.099394+00	t	KMT-2020-BLG-0414L	Microlensing	2021	3979.1	\N
1459	GJ 328 b	797.74930157	13.3	\N	3771	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.099396+00	2026-05-09 16:45:37.099396+00	t	GJ 328	Radial Velocity	2013	66.95	\N
1460	HD 16175 b	1875.1876013	12.8	\N	990	f	0	\N	\N	\N	\N	\N	f	f	2026-05-09 16:45:37.099398+00	2026-05-09 16:45:37.099398+00	t	HD 16175	Radial Velocity	2009	195.23	\N
1	Mercury	0.33	2439.7	57.9	88	f	0	3.7	167	Mercury is the innermost and smallest planet of the Solar System. Because it has almost no atmosphere to retain heat, Mercury`s surface experience the greatest temperature variations of the planets. Mercury appears as morning or evening star from Earth, but due to it`s proximity to the sun, it is very hard to see. Still Mercury can be observed at least twice a year: in spring at dusk and in autumn before dawn	Smallest planet and closest to the sun.	https://upload.wikimedia.org/wikipedia/commons/4/4a/Mercury_in_true_color.jpg	t	f	2026-05-05 22:53:54.811958+00	2026-05-09 17:53:32.082962+00	f	\N	\N	\N	\N	\N
2	Venus	4.87	6051.8	108.2	224.7	f	0	8.9	462	Although Venus has very similar size and interior structure as Earth, its volcanic surface and extremely hot and dense atmosphere makes it one of the most inhospitable places in the Solar System.Venus is one of the brihtest objects in our night sky- second only to the moon. It appears as either an evening or morning star.	Hottest planet due to greenhouse effect.	https://upload.wikimedia.org/wikipedia/commons/e/e5/Venus-real_color.jpg	t	t	2026-05-05 22:53:54.811976+00	2026-05-09 17:53:32.082962+00	f	\N	\N	\N	\N	\N
3	Earth	5.97	6371	149.6	365.2	f	1	9.8	15	Our homeworld is the densest of the eight planets in our Solar System. It is also the largest of the terrestial planets.	Only planet known to harbour life.	https://upload.wikimedia.org/wikipedia/commons/9/97/The_Earth_seen_from_Apollo_17.jpg	t	t	2026-05-05 22:53:54.811983+00	2026-05-09 17:53:32.082962+00	f	\N	\N	\N	\N	\N
4	Mars	0.642	3389.5	227.9	687	f	2	3.7	-63	Mars has a dramatic landscape, with towering volcanoes and polar caps, the days on Mars are only 40 minutes longer, the axial tilt gives it similar seasons to ours(although each lasts about twice s long)	The Red planet. Target for human colonisation	https://upload.wikimedia.org/wikipedia/commons/0/02/OSIRIS_Mars_true_color.jpg	t	t	2026-05-05 22:53:54.811988+00	2026-05-09 17:53:32.082962+00	f	\N	\N	\N	\N	\N
5	Jupiter	1898	69911	778.5	4331	t	95	25	-120	Jupiter is the largest planet of the Solar System with a mass of  2.5 greater than all the of the rests of the planets combined- but still only one-thousandth that of the sun. Jupiter is the planet most like the sun in terms of its composition. Although Jupiter would still need to be about 75 times as massive to fuse hydrogen and become a star, it would only need to be 13 times as massive to burn deuterium and become a dwarf.	Largest planet. The Great Red Spot is a storm older than 350 years.	https://upload.wikimedia.org/wikipedia/commons/2/2b/Jupiter_and_its_shrunken_Great_Red_Spot.jpg	t	t	2026-05-05 22:53:54.811993+00	2026-05-09 17:53:32.082962+00	f	\N	\N	\N	\N	\N
6	Saturn	568	58232	1432	10747	t	146	10.4	-139	Although, the seond largest, Saturn is the least dense of all the planets in the Solar System, with only one-eight the density of Earth(but nine times its diameter). It is also the only planet that is less than water. While the other gas giants also have rings systems, Saturn`s is larger and more visible than any other in the solar system. The rings are composed of water ice crystals and a smaller amount of rock, ranging in size from a speck of dust to a few particles as large as mountains.	Most spetacular ring system in the solar system.	https://upload.wikimedia.org/wikipedia/commons/c/c7/Saturn_during_Equinox.jpg	t	t	2026-05-05 22:53:54.811997+00	2026-05-09 17:53:32.082962+00	f	\N	\N	\N	\N	\N
7	Uranus	86.8	25362	2867	30589	t	28	8.7	-210	Uranus was the first to be discovered by the use of the modern telescope, with its discovery credited to the English astronomer William Herschel in 1781. Uranus has an axial tilt of 97.77 degrees, meaning it effectively rolls around the sun 'on its sides' compared to the other planets in the solar system.	Rotates on its sidewith an axial tilt of 98 degrees.	https://upload.wikimedia.org/wikipedia/commons/3/3d/Uranus2.jpg	t	f	2026-05-05 22:53:54.812001+00	2026-05-09 17:53:32.082962+00	f	\N	\N	\N	\N	\N
8	Neptune	102	24622	4515	59800	t	16	11.2	-200	Neptune was the first planet to be discovered purely on the basis of mathematical prediction rather than by direct discovery in 1846. Neptune has completed only one orbit of the sun since then.	Strongest winds in the solar system, up to 2100 km/h.	https://upload.wikimedia.org/wikipedia/commons/6/63/Neptune_-_Voyager_2_%2829347980845%29_flatten_crop.jpg	f	f	2026-05-05 22:53:54.812005+00	2026-05-09 17:53:32.082962+00	f	\N	\N	\N	\N	\N
\.


--
-- Data for Name: stars; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stars (id, name, designation, constellation, description, fun_facts, distance_light_years, star_type, magnitude, right_ascension, image_url, african_names, cultural_significance, traditional_uses, seasonal_associations, mythological_context, created_at, updated_at) FROM stdin;
2	Canopus	Alpha Carinae	Carina	The second brightest star in the night sky, a luminous yellow-white supergiant so bright it is used as a navigation reference point by spacecraft. Visible across the entire African continent.	Second brightest star in the night sky. So luminous it would cast shadows if it were as close as Sirius. NASA uses it as a navigation reference point for spacecraft orientation.	310	Yellow-White Supergiant	-0.74	06h 23m 57s	https://www.star-facts.com/wp-content/uploads/2020/06/Canopus-Alpha-Carinae.webp	{"ancient_egyptians": "Kahi Nub"}	Ancient Egyptians called it the golden earth star. Visible across the entire African continent making it a pan-African navigation reference.	{"ceremony": null, "navigation": "Primary southern navigation for North and East African traders.", "agriculture": null}	Visible in southern skies during African summer. Used to mark seasonal transitions across Eastern African coastal communities.	Associated with Ptah in some Egyptian traditions-god of creation and craftsmen. The star`s extreme southern position made it mysyterious to northern Egyptian observers.	2026-05-05 22:53:58.778191+00	2026-05-05 22:53:58.778193+00
3	Acturus	Alpha Bootis	Bootis	The brightest star in the northern celestial hemisphere and fourth brightest overall. An orange giant in its late evolutionary stage, notable for its rapid proper motion across the sky.	Brightest star in the northern celestial hemisphere. An old star — about 7 billion years old, nearly twice the age of our Sun. Moving rapidly across the sky relative to background stars.	37	Red Giant	-0.05	14h 15m 39s	https://cdn.mos.cms.futurecdn.net/rDubZBD2ryyFooKzbeRu9G.jpg	{"igbo": null, "zulu": "Inqonqoli", "shona": null, "yoruba": null, "amharic": null, "khoisan": null, "eastern_africa": null}	Used by East African pastoralist communities as a seasonal marker for cattle migration timing. Zulu astronomical tradition identified it distinctly.	{"calendar": "Cattle migration timing marker.", "ceremony": null, "navigation": "Directional reference for East African pastoralists", "agriculture": null}	Rising signals seasonal transition for cattle herding communities across East Africa.	Zulu naming tradition suggests cultural significance beyond navigation but specific mythological context requires further documentation.	2026-05-05 22:53:58.778196+00	2026-05-05 22:53:58.778198+00
4	Achernar	Alpha Eridani	Eridanus	The brightest star in the constellation Eridanus and one of the hottest stars known. It is a blue-white main sequence star with a unique spectral type.	One of the hottest stars known, with a surface temperature of about 23,000 Kelvin. Its unusual shape is due to its rapid rotation.	140	Main Sequence(B-type Rapid Rotator)	0.46	01h 37m 42s	https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_550,h_363/https://www.astronomytrek.com/wp-content/uploads/2016/03/Achernar-Alpha-Eridani.webp	{"igbo": null, "zulu": null, "shona": null, "yoruba": null, "amharic": null, "khoisan": "ǂKáǂkǂa", "south_africa": null, "eastern_africa": null}	Recognized by various African cultures for its distinctive appearance and position in the sky.	{"calendar": null, "ceremony": null, "navigation": "Used by southern African cultures for navigation due to its brightness and position near the south celestial pole.", "agriculture": null}	Visible in the southern sky during the summer months in the southern hemisphere.	Khoisan name ǂKáǂkǂa reflects its cultural significance, but specific mythological stories require further research.	2026-05-05 22:53:58.7782+00	2026-05-05 22:53:58.778202+00
5	Betelgeuse	Alpha Orionis	Orion	A red supergiant star in the constellation Orion, known for its distinctive reddish color and variability in brightness. It is one of the largest and most luminous stars visible to the naked eye.	One of the largest stars known, with a radius about 1,000 times that of the Sun. It is a variable star, meaning its brightness changes over time.	642.5	Red Supergiant	0.42	05h 55m 10s	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwdU4YYEnuYiPMOFAHS2XNeAiO0xyEeF70sQ&s	{"igbo": null, "zulu": null, "shona": null, "yoruba": null, "amharic": null, "khoisan": null, "south_africa": null, "eastern_africa": null, "ancient_egyptian": "Part of Sah/Osiris"}	While not specifically documented in African cultures, Betelgeuse's prominence in the night sky likely made it a significant celestial object across various African societies.	{"calendar": null, "ceremony": "Orion's prominence in the sky have influenced Egyptian ceremonial practices, especially funeral rites associated with Osiris.", "navigation": "Used as a reference point in the night sky for navigation across Africa.", "agriculture": "Orion complex used for planting calendars in Western Africa."}	Betelgeuse visibility marks dry season onset across sub-Saharan Africa. Part of the broader Orion seasonal calendar used across the continent.	As the shoulder of Osiris/Sah in Egyptian cosmology, Betelgeuse carried the weight of resurrection mythology. The Pyramid Texts describe the dead king merging with Sah — Betelgeuse marking the powerful shoulder of that celestial god.	2026-05-05 22:53:58.778205+00	2026-05-05 22:53:58.778207+00
6	Procyon	Alpha Canis Minoris	Canis Minor	The brightest star in the constellation Canis Minor and one of the closest to Earth. It is a binary star system consisting of a main sequence star and a white dwarf companion.	The name means 'before the dog' in Greek — it rises just before Sirius. Also a binary system with a white dwarf companion. One of the closest star systems to Earth.	11.46	Main Sequence(F-type)	0.34	07h 39m 18s	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiqqHVv-XRdBGMHBvpTXtiK5G7MkwJ_b0oHw&s	{"igbo": null, "zulu": null, "shona": null, "yoruba": null, "amharic": null, "khoisan": null, "south_africa": null, "eastern_africa": null, "ancient_egyptian": "Goose star"}	Ancient Egyptians tracked as an advanced warning system-Procyon rises before Sirius, giving early notice that the Nile flood season was approaching.	{"calendar": "Precursor marker to Sirius heliacal rising.", "ceremony": null, "navigation": null, "agriculture": "Advanced flood season warning in ancient egypt."}	Rises before Sirius, marking the approach of the Nile flood season. Functioned as an astronomical early warning system for Egyptian agricultural preparation.	Associated with the goose in Egyptian tradition — the goose being a sacred animal connected to Geb, god of the earth. Its role as herald of Sirius gave it prophetic significance in Egyptian religious practice.	2026-05-05 22:53:58.77821+00	2026-05-05 22:53:58.778212+00
7	Vega	Alpha Lyrae	Lyra	The brightest star in the constellation Lyra and the fifth brightest star in the night sky. It is a blue-white main sequence star that has been extensively studied by astronomers.	One of the most studied stars in the night sky. It was the first star other than the Sun to be photographed and have its spectrum recorded. It is also a member of the Hyades open cluster.	25	Main Sequence(A-type)	0.03	18h 36m 56s	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnGVovMVkC2hIWOZ6Nfm9H64To43kOsTmG2w&s	{"igbo": null, "zulu": null, "shona": null, "yoruba": null, "amharic": null, "khoisan": null, "south_africa": null, "eastern_africa": null, "ancient_egyptian": null}	While not specifically documented in African cultures, Vega's prominence in the night sky likely made it a significant celestial object across various African societies.	{"calendar": null, "ceremony": null, "navigation": "Used as a reference point in the night sky for navigation across Africa.", "agriculture": null}	Visible in the northern hemisphere during the summer months, marking seasonal transitions for many African cultures.	While specific African mythological associations with Vega are not well-documented, its brightness and prominence in the sky suggest it may have held significance in various African cosmologies.	2026-05-05 22:53:58.778214+00	2026-05-05 22:53:58.778216+00
8	Alpha Centauri	Rigil Kentaurus	Centaurus	The closest star system to Earth, consisting of three stars- Alpha Centauri A, Alpha Centauri B and Proxima Centauri. The most improtant southern star navigation system for sub-Saharan African people.	Proxima Centauri is the single closest star to Earth at 4.24ly. Has a confirmed exoplanet.	4.37	Triple Star System	-0.27	14h 39m 36s	https://www.star-facts.com/wp-content/uploads/2020/08/Alpha-Centauri-DSS.webp	{"zulu": "Mzwandile"}	Highly visible across all of southern Africa. Khoisan people of southern Africa built directional knowledge around it.	{"ceremony": null, "navigation": "Critical southern navigation reference for Khoisan and Zulu people.", "agriculture": null}	Circumpolar from southern Africa-visible year round, making it a constant navigational anchor across all seasons.	While specific African mythological associations with Alpha Centauri are not well-documented, Khoisan oral tradition likely contains a mythological context around Alpha Centauri given its navigational importance but scholarly documentation is incomplete.	2026-05-05 22:53:58.778218+00	2026-05-05 22:53:58.77822+00
9	Rigel	Beta Orionis	Orion	A blue supergiant and the brightest Orion, one of the most recognizable constellations across all of Africa. Among the luminous stars visible to the naked eye despite its great distance.	Despite being Beta, Rigel is brighter than Alpha Orionis(Betelgeuse) most of the time. A blue supergiant-one of the most luminous stars visible to the naked eye. If placed where the sun is it will extend pass Venus.	860	Blue Supergiant	0.13	05h 14m 32s	https://static.wikia.nocookie.net/space-fact-file-gwiontomos/images/1/14/Rigel.jpg/revision/latest?cb=20210816081423	{"ancient_egyptian": "Part of Sah constellation"}	Part of Orion-called Sah in Egyptian tradition-representing Osiris, god of the afterlife. The Giza pyramid complex is aligned to Orion`s belt with Rigel anchoring the constellation below.	{"ceremony": "Connect to Egyptian funeral rites", "navigation": "Orion used widely across Africa for directional orientation", "agriculture": "Orion rising marked planting seasons across West Africa"}	Orion`s appearance signals dry season transitions across West and East Africa. Planting calendar reference across multiple African agricultural traditions.	In Egyptian cosmology Orion/Sah was the soul of Osiris placed in the sky after resurrection. The Pyramids Text-oldest religious texts in the world-reference the king ascending to join Sah in the sky. Rigel as the foot of Orion carries this cosmological weight.	2026-05-05 22:53:58.778222+00	2026-05-05 22:53:58.778224+00
10	Hadar	Beta Centauri	Centaurus	A triple star system and the second brightest star in Centaurus. Forms a critical pointer pair with Alpha Centauri directing observers towards the Southern Cross, making it essential for southern African navigation.	One of the closest massive stars to Earth. Will eventually explode as a supernova.	390	Blue Giant	0.61	14h 03m 49s	https://www.star-facts.com/wp-content/uploads/2020/07/Hadar.webp	{"zulu": "Isona", "Khoisan": null, "ancient_egyptian": null}	Used along with Alpha Centauri as a pointer pair towards the Southern Cross. Critical for southern African navigation. Zulu astronomical tradition named it distinctly.	{"ceremony": null, "navigation": "Pointer star toward Southern Cross for  sub-Saharan navigation.", "agriculture": null}	Circumpolar from southern Africa-year round navigation reference. Season rising angle used to determine time of the year.	While specific African mythological associations with Hadar are not well-documented, its consistent pairing with Alpha Centauri in navigation traditions suggest the two stars were conceptualized together in southern African cosmological framework.	2026-05-05 22:53:58.778226+00	2026-05-05 22:53:58.778228+00
1	Sirius	Alpha Canis Majoris	Canis Major	The brightest star in the night sky and one of the closest to Earth. A binary system consisting of a main sequence star and a white dwarf companion, located in the constellation Canis Major.	Sirius is brighter than any other star seen from earth.	8.6	Main Sequence(A-Type)	-1.46	06h 45m 08s	https://skyandtelescope.org/wp-content/uploads/Sirius-Gabriela-and-Fabio-Carvalho-480x274.jpg	{"Dogon": "Sigi Tolo", "ancient_egyptian": "Sopdet"}	Central to Dogon cosmology. Ancient Egyptians oriented the Isis temple at Dendera towards Sirius. Its heliacal rising mark the Egyptian New Year and the Nile flood.	{"calendar": null, "ceremony": "Dogon Sigi festival cycle tied to Sirius orbital period.", "navigation": "Used by East African coastal traders for open sea orientation.", "agriculture": "Nile flood calendar marker in ancient Egypt."}	Heliacal rising mark summer solstice in North Africa and planting seasons across multiple regions.	Dogon oral tradition describe Sirius B - a white dwa companion- centuries before western astronomy confirmed it in 1970. In Egyptian mythology, Sirius was Sopdet, goddess of fertility and the Nile flood.	2026-05-05 22:53:58.778175+00	2026-05-10 11:15:49.711309+00
\.


--
-- Name: agencies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.agencies_id_seq', 10, true);


--
-- Name: messier_objects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.messier_objects_id_seq', 104, true);


--
-- Name: planets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.planets_id_seq', 1460, true);


--
-- Name: stars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stars_id_seq', 10, true);


--
-- Name: agencies agencies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agencies
    ADD CONSTRAINT agencies_pkey PRIMARY KEY (id);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: messier_objects messier_objects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messier_objects
    ADD CONSTRAINT messier_objects_pkey PRIMARY KEY (id);


--
-- Name: planets planets_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planets
    ADD CONSTRAINT planets_name_key UNIQUE (name);


--
-- Name: planets planets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planets
    ADD CONSTRAINT planets_pkey PRIMARY KEY (id);


--
-- Name: stars stars_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stars
    ADD CONSTRAINT stars_pkey PRIMARY KEY (id);


--
-- Name: ix_agencies_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_agencies_id ON public.agencies USING btree (id);


--
-- Name: ix_agencies_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_agencies_name ON public.agencies USING btree (name);


--
-- Name: ix_messier_objects_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_messier_objects_id ON public.messier_objects USING btree (id);


--
-- Name: ix_messier_objects_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_messier_objects_name ON public.messier_objects USING btree (name);


--
-- Name: ix_planets_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_planets_id ON public.planets USING btree (id);


--
-- Name: ix_stars_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_stars_id ON public.stars USING btree (id);


--
-- Name: ix_stars_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_stars_name ON public.stars USING btree (name);


--
-- PostgreSQL database dump complete
--

\unrestrict 1NawyIHLBd1BMNFQzT9OekuPSGcOxj9FZ2UeCdSxwMrXfNjLotdYHbMCrSmbRG1

