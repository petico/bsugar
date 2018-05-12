# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
bs_db = BsDb.create(name: 'defualt', is_sys: true)
bs_db.bs_types.build(name: 'integer', short_name: 'int', is_precision: true, is_scale: false).save
bs_db.bs_types.build(name: 'decimal', short_name: 'decimal', is_precision: true, is_scale: false).save
bs_db.bs_types.build(name: 'float', short_name: 'float', is_precision: true, is_scale: false).save
bs_db.bs_types.build(name: 'money', short_name: 'money', is_precision: true, is_scale: false).save
bs_db.bs_types.build(name: 'string', short_name: 'string', is_precision: true, is_scale: false).save
bs_db.bs_types.build(name: 'text', short_name: 'text', is_precision: true, is_scale: false).save
bs_db.bs_types.build(name: 'datetime', short_name: 'datetime', is_precision: true, is_scale: false).save
bs_db.bs_types.build(name: 'timestamp', short_name: 'timestamp', is_precision: true, is_scale: false).save
bs_db.bs_types.build(name: 'date', short_name: 'date', is_precision: true, is_scale: false).save
bs_db.bs_types.build(name: 'boolean', short_name: 'boolean', is_precision: true, is_scale: false).save


bs_db = BsDb.create(name: 'postgresql', is_sys: false)
bs_type_int = bs_db.bs_types.build(name: 'integer', short_name: 'int', is_precision: true, is_scale: false)
bs_type_int.save
bs_type_chr = bs_db.bs_types.build(name: 'character varying', short_name: 'varchar', is_precision: true, is_scale: false)
bs_type_chr.save
bs_type_bol = bs_db.bs_types.build(name: 'boolean', short_name: 'bool', is_precision: false, is_scale: false)
bs_type_bol.save
bs_type_tsp = bs_db.bs_types.build(name: 'timestamp', short_name: 'timestamp', is_precision: false, is_scale: false)
bs_type_tsp.save
bs_project = BsProject.create(name: 'TestProject', description: 'TestProject Remark')
bs_system = bs_project.bs_systems.build(name: 'TestSystem', description: 'TestSystem Remark')
bs_system.save
bs_table = bs_system.bs_tables.build(logical: 'プロジェクト', physical: 'bs_projects', remark: 'TestTable Remark', bs_db_id: bs_db.id, db_name: 'Test DB', schema: 'public')
bs_table.save
bs_table.bs_columns.build(rowno: 1, logical: 'id', physical: 'id', pk: true, fk: false, uq: true, nn: true, bs_type_id: bs_type_int.id, precision: 0, scale: 0, df: '', remark: '', locked: false, delflag: false).save
bs_table.bs_columns.build(rowno: 2, logical: 'プロジェクト名', physical: 'name', pk: false, fk: false, uq: false, nn: true, bs_type_id: bs_type_chr.id, precision: 50, scale: 0, df: '', remark: '', locked: false, delflag: false).save
bs_table.bs_columns.build(rowno: 3, logical: '説明', physical: 'description', pk: false, fk: false, uq: false, nn: false, bs_type_id: bs_type_chr.id, precision: 200, scale: 0, df: '', remark: '', locked: false, delflag: false).save
bs_table.bs_columns.build(rowno: 4, logical: '開始年月日', physical: 'start_date', pk: false, fk: false, uq: false, nn: false, bs_type_id: bs_type_chr.id, precision: 4, scale: 0, df: '', remark: '', locked: false, delflag: false).save
bs_table.bs_columns.build(rowno: 5, logical: '終了年月日', physical: 'end_date', pk: false, fk: false, uq: false, nn: false, bs_type_id: bs_type_chr.id, precision: 4, scale: 0, df: '', remark: '', locked: false, delflag: false).save
bs_table.bs_columns.build(rowno: 6, logical: '削除フラグ', physical: 'endflag', pk: false, fk: false, uq: false, nn: true, bs_type_id: bs_type_bol.id, precision: 0, scale: 0, df: 'false', remark: '', locked: false, delflag: false).save
bs_table.bs_columns.build(rowno: 7, logical: '登録日', physical: 'created_at', pk: false, fk: false, uq: false, nn: true, bs_type_id: bs_type_tsp.id, precision: 0, scale: 0, df: nil, remark: '', locked: false, delflag: false).save
bs_table.bs_columns.build(rowno: 8, logical: '更新日', physical: 'updated_at', pk: false, fk: false, uq: false, nn: true, bs_type_id: bs_type_tsp.id, precision: 0, scale: 0, df: nil, remark: '', locked: false, delflag: false).save

