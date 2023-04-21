# Markdown - Short Intro

## Level 2 heading

Some text _with italics_ and **this is bold** `code`

Two spaces at the end of the line makes a line break

## Unordered Lists

- List one
- List two

## Unordered Lists

1. Item
2. item
<div style="page-break-after:always;"></div>

3. item

## Blockquoting

> First level quote
>
> > Nested quote
> >
> > > Nested inside another nested item

### Codes

```js
const number = 10;
```

```json
{
    "Name" = "David James",
    "age" = 30
}
```

```html
<html>
  <header>
    <h1>This is a header</h1>
  </header>
  <body>
    <h1>This is a body element</h1>
  </body>
</html>
```

```css
h1 {
  color: yellow;
}
```

### Terminal or Shell Usage

```shell
node -v
```

## Storing DATA

1. Memory
   - Always cleared on every reboot/program start
2. Disk
   - For persistence

## Disk Storage

- Plain text file
- Structure
  - json
  - csv/tsv (comma or tab seperated value)
  - xml
  - ini
  - svg (for images, xml file)
- Binary file
  - data in binary format
  - images
  - audio
  - video

## Examples

### Json

```json
{
  "name": "Johnny Cage",
  "age": 23,
  "job description": "Developer"
}
```

### CSV

```CSV
Firstname, lastname, age,
Jonah, Derrick, 23
Anna, Daemon, 30
```

```CSV
"Firstname", "lastname", "age",
"Jonah", "Derrick", "23"
```

### XML File type

```xml
<?xlm version="1.1" encoding="UTF-8" ?>
<persons>
  <person>
    <firstname>Matt</firstname>
    <lastname>River</lastname>
    <age>23</age>
  </person>
  <person>
    <firstname>Jake</firstname>
    <lastname>Moon</lastname>
    <age>30</age>
  </person>
</persons>
```

### ini File type

```ini
;this is a comment in ini file
[database]
driver = mysql
host = localhost
port = 3306
databasename = persondb
[user]
username = Zeke
```

### SVG file formats

<svg xmlns="http://www.w3.org/2000/svg" version="1.1" width="200" height="250" >
    <rect x="2" y="2" width="196" height="240" fill="grey" stroke-width="4" stroke="lime" />
    <circle cx="100" cy="120" r="75" fill="orange" />

</svg>

### Databases

Includes databases handling programs such as manipulating data and manipulating databases structure and users etc.

- relational databases
  - sql language
- non-relational databases
  - no-SQL (for example mongodb)

### MYSQL Commands

- sudo mysql; starts the database
- select user from mysql.user; Shows all users
- mysql -u ebizimoh -p Accessing the DBMS as the user - ebizimoh
- grant all privileges on _._ to 'ebizimoh'@'localhost' with grant option; Giving full privileges to the ebizimoh user
- create user 'ebizimoh'@'localhost' identified by 'keji3j3rr'; Creating a new user "ebizimoh" with password "keji3j3rr"
- show databases; Showing all databases accessible by the user
- create/drop database/table $database_name; creates or drops a database/table
- use $database_name; accesses a database
- show tables; shows the tables in a particular database
- Select database(); shows the name of the accessed database
- describe $table_name; shows the description of a table - parameters and characters accepted.
- show create table $table_name; Displays the command that was used to generate a table
- select \* from $table_name; Displays data inside a table
- select cardId, licence from $table_name
-

## Datastorage Usage

`Client application`
| (API)
`Datastorage layer`
| (API, for example SQL)
`database engine`
| (API, write/read disk etc)
`Disk storage`

## Version 2 with different storage engine

`Client application`
| (API)
`Datastorage layer`
| (API)
`Our own data-engine`
| (API, write/read disk etc)
`Disk storage`

##

## Relational/Table

| firstname | lastname   | age |
| --------- | ---------- | :-: |
| 'Matt'    | 'Lawrence' | 20  |
| 'Jenny'   | 'Dats'     | 40  |

## Alignment

| Header | tag  |
| ------ | :--: |
| left   | :--- |
| right  | ---: |
| center | :--- |

```JSON
{
  "firstname": "Matt",
  "Lastname": "River",
  "age": 20,
  "computer":[
              {"name": "Brain I", "Price":200},
              {"name": "Nlast x200 GT", "Price":900}
  ]
}
```

## Person

| id  | firstname | lastname   | age |
| :-: | --------- | ---------- | :-: |
|  1  | 'Matt'    | 'Lawrence' | 20  |
|  2  | 'Jenny'   | 'Dats'     | 40  |
|  3  | 'Alex'    | 'Vain'     | 18  |

## Computer

| id  | name            | price |
| :-: | --------------- | ----- |
|  1  | 'Brain I'       | 500   |
|  2  | 'Verzo 390'     | 200   |
|  3  | 'Blast x200 GT' | 900   |
|  4  | 'Dermont DT'    | 250   |

## Person_has_computer

| computerid | personid |
| :--------: | -------- |
|     1      | 1        |
|     2      | 2        |
|     3      | 1        |
|     4      | 3        |

## Create statements for tables

```SQL
create table person(
  id integer not null primary key,
  firstname varchar(20),
  lastname varchar(30) not null,
  age integer
);

create table computer(
  id integer not null primary key,
  name varchar(50) not null,
  price integer
)

create table computer&person_ref(
  personid integer not null,
  computerid integer not null,
  primary key(personid, computerid),
  foreign key personid references person(id),
  foreign key computerid references computer(id)
)
```
