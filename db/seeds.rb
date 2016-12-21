# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

<<<<<<< HEAD
FunctionCategory.create(name: '仮想化')
FunctionCategory.create(name: '経路制御')
FunctionCategory.create(name: 'パケット遮断')
FunctionCategory.create(name: '専用線')
FunctionCategory.create(name: 'アドレス交換')
FunctionCategory.create(name: '転送')
FunctionCategory.create(name: '自動割り振り')

PartCategory.create(name: 'SDNコントローラー')
PartCategory.create(name: 'ソフトウェアスイッチ')
PartCategory.create(name: 'ソフトウェアルータ')
PartCategory.create(name: 'オペレーティングシステム')

Function.create(name: 'VXLAN'     ,function_category_id: 1,  purpose1: true,  purpose2: true,  purpose3: true,  purpose4: true)
Function.create(name: 'NVGRE'     ,function_category_id: 1,  purpose1: true,  purpose2: true,  purpose3: true,  purpose4: true)
Function.create(name: 'VLAN'      ,function_category_id: 1,  purpose1: true,  purpose2: true,  purpose3: true,  purpose4: true)
Function.create(name: 'BGP'       ,function_category_id: 2,  purpose1: false,  purpose2: false,  purpose3: true,  purpose4: true)
Function.create(name: 'OSPF'      ,function_category_id: 2,  purpose1: false,  purpose2: false,  purpose3: true,  purpose4: true)
Function.create(name: 'EIGRP'     ,function_category_id: 2,  purpose1: false,  purpose2: false,  purpose3: true,  purpose4: true)
Function.create(name: 'LISP'      ,function_category_id: 1,  purpose1: false,  purpose2: true,  purpose3: false,  purpose4: false)
Function.create(name: 'FW'        ,function_category_id: 3,  purpose1: true,  purpose2: false,  purpose3: false,  purpose4: false)
Function.create(name: 'VPN'       ,function_category_id: 4,  purpose1: true,  purpose2: false,  purpose3: false,  purpose4: false)
Function.create(name: 'NAT'       ,function_category_id: 5,  purpose1: true,  purpose2: false,  purpose3: false,  purpose4: false)
Function.create(name: 'L2SW'      ,function_category_id: 6,  purpose1: false,  purpose2: true,  purpose3: true,  purpose4: true)
Function.create(name: 'L3SW '     ,function_category_id: 6,  purpose1: false,  purpose2: true,  purpose3: true,  purpose4: true)
Function.create(name: 'DHCP'      ,function_category_id: 7,  purpose1: true,  purpose2: false,  purpose3: true,  purpose4: false)



=======
FirstCategory.create(name: '�Z�L�����e�B')
FirstCategory.create(name: '���[�e�B���O')
FirstCategory.create(name: '�R�X�g�ጸ')

SecondCategory.create(name: '�t�@�C�A�E�H�[��', first_category_id: 1)
SecondCategory.create(name: 'VPN' first_category_id: 1)
SecondCategory.create(name: 'NAT' first_category_id: 1)
SecondCategory.create(name: 'DUM1' first_category_id: 2)
SecondCategory.create(name: 'DUM2' first_category_id: 3)
>>>>>>> origin/master
