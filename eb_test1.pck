GDPC                                                                               <   res://.import/dots.png-503527815ff6050c9a751263768a95eb.stexp      �2      �ث�[��n�!����<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex E      U      -��`�0��x�5�[   res://Dots and wiggles.tscn �      _      @x��p����D�9R��   res://Sprite.tscn         �      E���\��߉1�V�T   res://default_env.tres  �      �       um�`�N��<*ỳ�8   res://dots.png.import   @?      �      )Si&�q��ϧN�l��    res://dots_wiggles_mid.shader   �A      �       :k
Ƀ]�:���]���l    res://dots_wiggles_top.shader   PB      �       �
bPT}�By<w�.0   res://git_api.gdnlibC      �       ��_&�d^��R/��^   res://git_api.gdns   D      �       ���'�B�rH���2U�   res://icon.png  �T      �      G1?��z�c��vN��   res://icon.png.import   `R      �      �����%��(#AB�   res://project.binary�a      �      ��_���7��e��F        [gd_scene load_steps=9 format=2]

[ext_resource path="res://dots.png" type="Texture" id=1]
[ext_resource path="res://dots_wiggles_top.shader" type="Shader" id=2]
[ext_resource path="res://dots_wiggles_mid.shader" type="Shader" id=3]

[sub_resource type="Shader" id=1]
code = "shader_type canvas_item;      

void fragment(){
	COLOR = vec4(112.0/256.0, 80.0/256.0, 120.0/256.0, 1.0);
}
"

[sub_resource type="ShaderMaterial" id=2]
shader = SubResource( 1 )

[sub_resource type="ImageTexture" id=3]
size = Vector2( 256, 224 )

[sub_resource type="ShaderMaterial" id=5]
shader = ExtResource( 3 )

[sub_resource type="ShaderMaterial" id=7]
shader = ExtResource( 2 )

[node name="Node2D" type="Node2D"]

[node name="background" type="Sprite" parent="."]
material = SubResource( 2 )
texture = SubResource( 3 )
centered = false

[node name="mid" type="Sprite" parent="."]
self_modulate = Color( 0.784314, 0.0941176, 0.0941176, 0.537255 )
material = SubResource( 5 )
texture = ExtResource( 1 )
centered = false

[node name="top" type="Sprite" parent="."]
material = SubResource( 7 )
texture = ExtResource( 1 )
centered = false
 [gd_scene load_steps=5 format=2]

[sub_resource type="Shader" id=1]
code = "shader_type canvas_item;

void fragment(){
	COLOR = texture(TEXTURE, UV);
	if (UV.x > 0.5) {
		COLOR.b = 1.0 * sin(TIME*4.0);
	} else {
		COLOR.b = 1.0 * sin(TIME);
	}
}

void vertex(){
	  //VERTEX += vec2(cos(TIME)*10.0, sin(TIME)*10.0);
}"

[sub_resource type="ShaderMaterial" id=2]
shader = SubResource( 1 )

[sub_resource type="ImageTexture" id=3]
size = Vector2( 256, 224 )

[sub_resource type="GDScript" id=4]
script/source = "extends Sprite

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
"

[node name="Sprite" type="Sprite"]
material = SubResource( 2 )
use_parent_material = true
position = Vector2( 128.189, 112.016 )
texture = SubResource( 3 )
script = SubResource( 4 )
          [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST   �           �2  PNG �PNG

   IHDR      �   �A�P   sRGB ���    IDATx��o�dW��?5&jO���t�nnx�aWݐj�&%;�&i�(�>�iY�W�o���.�+A�!��K�$b`�7aĚ 	h7Ƭ�(���Aғ̢d&ӄg��ϋ�=so��=�U�����n�=�s��{~��=���cG��}�#ye�G^������UDI;瀃����l�}���2?�� =`w�=�p9��D 6v��ە�gy)���݉�m�R�,��H�q� �%���b`�N�c�֑��6�}`)y�@��eQ��-�<����p��*���=���#�"8���=yY	˱�{��R?8r��M����7�wkAhX�zH]U��:�j�wC� 8�d ��鋈8�����6. w!��
4��El�V�W�g���l�\�9�� K�#R�a)ó�s������c(�.�����!F���MR_~\D��HB��I�R	ގ��! �7 &�>��B�d������H�qq�"�\~�B�V K;�H9H���Pb�<R�CB��H��A�����E(18��~�B0&!�#uv �����6��I� �~d��
�H4���k���6�!��a���`�#��]�
dag��<�ID�|��x�

�5�c�|�����qx���a�x���벼" 7��/b�E4`��6. G��O���6�<�!��@v�I� �[|H4���0�����g��[���&ҥ;�C4�A���W���ǲ�Z�d��7��xMD��\ ^(����AN�7�6^|�,�~�;� �#���H��ˢ�M6����H�Qvv�[�yd��$_� o�]X��B��_���\r��܈D���1�׋.�)C�eY>����eٵt����؇�Oi8��m��w �.����B
� "�D���܏�;K��*=�CH���8�����|�jBK0G:Ҿ�Fl��,?J���e�|��_!iYq��!3��ߎ��_Gx�%�`�FU�>�n��� w#����t�r�G���C��1�^�Ra_Q[Yv5-�
�8��	��-q~����Fy-���P�_1�,��F����+v���(�*Dr��eQ0`<#�e�H�Ta�P�_�"���3z��F8ίP���Z+G�8D����*x�zg��H���,� ��� �@YT�9d��(a9�����KA��ڦ��������*�3�Q��X^��R���V�y0 l�W(�������㯃.2�}W��X�������� �C�E��|����R�n��n�CY������t�+���Yr
i�6�/"�.�V1�ՈX�B�B�CKuv��� ��B)×�{�����?�x����x�V`�B!�q�>28|5��h0���b�{z	7�E��w�����GQ]�E��	7�Eu��}�����_���4_�PO ڰ���9����ew	u����C�Ql�\&?��J��Z�Y�s��D�}���N�ۋ[?ry�m,�Y��y��m\K����J "�1"_7�H�]���y����yD lB��v�k���I.
u;�#-�-E��I��� iYF�� o7��k p\*�ɉB�$^.B��f �sYN� ��ΖC�����q� ѥ�6Bŵ�]��1M0	��&�K�3�W��G � ⊈1@�(M�ѩ��~m�C��]=$��+�l��?t\�ڛ�kY����6�l#y��fYD���H�6�l#�v\ٸ�'*�|�hD�#�I�<�[�g�s�6�c���į-�6FW���ɴD �Ry&E ��@'⊱E 3f̘Rf0c�3�3��]T8�/0b��(}F_`�3�(uF_��c�ꬾ�c{���^��`Z*Ϥ�r�`�iq�ev�A������܍A&����P�u��<!+uJo��6Fc� b���ѧ9���"�N�5E giwPd�����R/#uz�g��E @�\�\B��6����V�)N�m����?Ƴ_N� LB��u,��]��E�1���Y8M;E �.�o 3�����IoSy�1��0�s�#�5���^�@�
�������ĴW b��8.��D!c/!��Hsb�e$?b_��
�iI��iG�gx����x�U�ן��)->9	��p�E�YO/"��s���^]0�ޙB`�[z���?�O�~����֑|i�X�m���G�T�w��|���	�	������>ԄU琳��0�	��^އI��N;�6��`?�}x�v�l��.Ԕ����ViG0�\:��q���5D�
[;M�Y~�9����3�G,�|)R������W\B���@� �hZ�@��TT�j2W[(�PG%wu�&(+TFq ��FSg� Q@�]��g�����.P*,�+�B��07[Q4�F�֡v����f̣�1�1��_q�Z����V�o��H�V�.�TM&o!!ս�%������Ӻ��"<� �� B�p��H]x��D`9��%�L�ݗ��|��D��4�*�@�����d�_�S�#���^.�(����&P����`��H~�"��C�<��?˟�|�E�����;b��rd���7,I����2Uc�[���7��|S�M�v~��� -��B��k��p+���PO_G�Mm�Ծ�V�o?��s��o"�o!��>�kq3�-�� <DZh�d��`����ٴ�N�#}�E����8�D�]��0~GYG�?pp~��6%��0�M`��F��08�m�o)Bʲ��WZ��#+�. "�;��o#-��k�з�����h`�9p�Ir�Bl������<R����d �1��E�l���ud�d��p�"���*������5������D�������-3x��h`�����=�9C��%��~��h@��#�S���xY������h@������YtaM��8�!���h@����� ��]\��o��2R��BM�h������JG �����KĤӏC�/TH�����O�A�<�%��K��8�id9�9,F���iY�}���I���`)��Ili�"��hi�p�4r�����6�`�EDD�c1�_��*,lރ������V:y?z��O�� H� ��&1�CHC�8��`c4�9����(�_K^�F*��,�娎��D؋�r���,g��!- w!��$Lv���������B�"��,�=�5��٧@r���W�x��:�g���ʼk��}j�K�(��*�PJ5�!"�w�ڃ�;�5���Q�H�OzPgމKj·�^'�F���(8��n�^g�#=rl�	�4�*Mޱcj��I��R9~� ��;ۺ������,���W'�\�hr��6ix{�ɄxF-6��L�'T���`QU.'�+ݲ��/n&=�1yݍQ�����h�[�Xb�.MԱ�wnSa0���KѲ������$�7�}̨����t�b@ S�����1��$�84:k�:{�' Y��J�a�밬l����C�����Փ�� &w݈I  }�~C��rc����Տ��1��8����O B��-���'��)�]�rz�-��O"�u�y�g0l�^c9v�����ի���a7�#{�@6C�vl��Z:���}�b߄��=-4>�Vf�l���x�@l�����n�m��r�B��=�Qd�q��6���}$��GD�i����n@��D��T�]�F��> |�)�n�!Q��!˩����g# �q�h�1�آ¬ ��e��$b<6^�l��Y���穼���~7#��k�m*�����WH��#��Ƞ�H��������x2��u�ˌ�1�݈�܊��Y4ϐؔ�� ���7Q�A,��A���q�J6��4\�<�w~[�"T4p�R"`���#���/BE[�4��X8�!��m��P��uH��PL`�(�qҕ�ձB�ί�(i���(翝�?������u���Os�s���=�݈���8����Ua�Gǐz���6�@al%G�Ր��q~E�6���
5O���ZH���8�bY<��,�1�W�&]GQ	�"�2�""������!����*8L=��}�k���
	�A��rz��w�A�P�_�"��)1�TE ���Q���d@5�)������2`v/;k���2���+��ϘGc�cE�VU  ]�1��ӹ_s�u�E������㯃>�9
�4������`�g��|��@�}�+w�\3"> �J3�}���q�"R�Bl�\���+�8�tPg�
���nö��2T�"��"#��܎Ѷ�F�A{��5y� uD P��,�&���E��GQa��%�{�pC�QTW`���E��GQ]�#y�E8u	 �O��0H�o.6. k�C�G�"k�]B]��?���4�ɏ�q�wu
@��H�˵!a�S���֏\��)->YF�6 a?�`O۸���6�b{]�Dإ}y���9=>�G�&��!�aK�L� ��nKq�����>� �6v=� �k!m�	�s�� @\*�ɉB�$^.B���8�L ܉0��v��=�E/}���E�~�<�:8 w"�"��W��/���_�GL���- ���G�|�vt6Α���V:�{��#=���`c�X�C0��m��F�v�Ͳ�,j;y��m��F�v��}P�Y���G �Ryt��9N�S�L�����,��i�<�" �Lv�=�z& 3fL13�1c��	��S��)�V[�Y��)�c�����"�zF�(��i�:�����E �3-�gR`9C ˴����'�����Tytv��:�N���:�7@��Q�c�m�	�}���c��,�ZSp�vGE6��:V�p& �Ę��r�k[��l3mb����S�~�<�7�H�L ܉1�*����Ƒ�eѥ*D�N��c�㚮�����l���n�&r&����c8�7`6���G k��������- ��kC"�.�� .��D!c/!��h���:�40��v�\�6\l|����x�U�ן��)->9	��p�E�YO/"`�.b�U��$C�һ�����x�<���ݖu$_�4`��2��4N����8�hȑa�|/�!��)g�9�,�6�l� �����F��ӎ���;H��px�v�l��~�R�%���q2�\:��q���5D�
[;��?�R��I��#��H�X��sx���?���
�M+�n��81��5�T�Q[(�PG%wu�&(+TFq�R�M���y�����n�
�B�
�п0�͊�F�ThjW��>�m�<jc+��� ��7�բFoh�C�&��L�b�qx9c.$���m����(���~���*�_!��6r��	JD�e ��%Y%�)i��"�8E8"���>�墋��18�I�a���Ǳ�����W("���1$�s���* 1�QtC�]�y��`��PD���[�X9�c��X9�	_��cX��hf`p���M3��0]��&,�Q�@a���qr~K�<E3�[�*F����Z:���f1�m�U|��������%���1�����>�.O�xm|Q�� +�z�{�Z�M���1�'����Ӣ� /!Q�<R�]��f��x��Bх:-l{�5�&=\��.��Ȭ��M����mʰs��ۚχ�SmS��`��!���A���0�-�u�yd�2�5�е�|�$��\~���R�C=|9Q�[�H��T��y��O�84�<�I������ ����	��.�?���藨�/�&�����h~���� 9U8�z���������r, G�O#�+����ȃ=��ǩ�ۨ &}@gH#�EDH�71�	��.��@�"�"��גׯ��Ӵ㏢���D؋�r���ӈg��!- w!�����"��/!��g����α�wF���D#�,�ȫ-tH+�<�A�y'֨���6V�H+PSU:z��F�"�w�ڃ�;�5���Q�H�OzPgމKj·�^'r��E�~B	"&�)GQΘw��ڍ��BU��;vLm��k#K�yN�6Ԭk��q�ƛ��/E���f/yqUM?1�a��IE�&o/���M���{\�64Y������RWU��9�ʌE�`���)Zէ��$�˧elE��I�R	ގ�,+ &wjN��Q�L����̮(�H� ���t�X�A� �~T&��H4��!$tY�eac��.X�O���Ĭ�p(�e�s�X����� ��~C,���q8�8�~���&�ʮ�G9�р��Y��'u��_���DJ
��ʱ� |�Um�Ml"]��#��h�u�eY~)�kp,ˮ�MV�
z�ˏ�D���4�t-��Zq#ja�������ǿS��;��݌�l�,��d#Xٹ�Te�凉 v} q��H$�fޅ��*���u���_^bύHԸy��b�2TX��C�? ��\�]K��!��}���ú��5�w �.����B
� "�D���܏�;K��*=�CH���8�����|�jBK0G:Ҿ�Fl��,?J��4=�B�ί�����~ѐ���o�ȯ���R�u�*L��D7E�{��!�)��qpZ9�#��u�!��R�r�a�Mme�մ�+���
c$0�z���j�Z	䵐;Cq~�<�F	X�c(ί�M���0���Z�E�����!"]{P�D�Bq~��S��u��8�BEwP0j�A�]d&#�W�H�a�E�#u������z�'4eQq�)������2`v/;k���2���+��ϘGc�cy�f(K5sS[Y�	����_1�|:�#�k����<�]~c�s�u�G�s�4����5�_H=���ߺe9:0 �J3�}��K^g�Y(��X ��T�[�,W#b�
9�-�٩B��g��
=���A&�Ȉ��g��
��w!kv,���#�÷PsY�F ���+��w�pC�QT�{w��!���X��~�pC�QTW�Hއ�3j�Y O�������C�Q��Zv�PW��9��6�e�i��;�e���0G�MDا{/�����#���A��2��	��{�Ƶ��9���� B#�u#�Dإ}y���9=>�G�&��!�a罦���P��8���RT{�t[���e�+QY�v�1aN�� ǥ⛜(dL��"��Q� i�"<��4	�<�l9{��^�]�m� T\�ڕ��$ �PylҿD;�E}0"��� D�Ҵ�ZΑ���V:�{��#=����`c��C�7�ײ,{<x��۸����^�eY<�v�6 �۸����1��ƮD ����}0)�gtK�,y��Fz�2���������>��`Z*Ϥ�"��D\1�`ƌS�L f̘bf0c�����ѧ�)����k�B�!WD���5�9vڡ��k;�gn ���i� ���L� l gf�W\fgԎ� ������$a�*��uXg��2_����h�@L��1��o#'��Y�)���,��l��?t\��e�No��Ĵ ȡ�k�S�K��K�XClm+���6B�����/�I &����:a�]]��E�1���Y8M;E �.�o 3�����IoSy��)�u�<�>X��݀m�U
�����o݀�,@L{ ��N[ ��R�MN2&�r��(l�4'_F�#���� ���m��ptx�׀�K�7^~�p�I�/��ⓓ���\����"" �<����u C�)���w��3���y�Νaɗ6�ئ�L~4M�zw	�/QO� ��]�I�0�CMXu9K�c��/���}����;�c,`������i�X�6�G��BMy��a, o%��vDCʥsx���)^CD����T�u�ǘC�8	<�}�rɗ2!���<AA�oq�%$j�
�	@��e�!�HEe�&s��uTrW�j��Be� pnl4u���(z`H�]����²P�*�/s�ESiThjW��>�m�<jc�l��1��+�{h�a�@��i���L�d�R�KX��  RIDAT"�	<�O=��:�-���Q�)
"9�ԅ�	K��]OP"���})��G�ILO�����M��8E8"���>�墋��18�I�a���Ǳ�����W("���1$�sql���ɷZD�cy:�
� �mS��-�
8��kM�;g��YF"�&Ovr~�������V�oB���7�AN���
��v5��gy�-�� <DZ�Ғi�[�ȼ ��n��:9����2�t9��o��#���?;�z����0n���7*8?����X��ȾBʲ��
 �k�/ "�����o#-���"� �AV����z��&�s���Irߜ^B��H9v=�s�z�����̚l�.�[䶑Y�5����=�/˛HY�'�D�S�\ $�����H����s\l#Kh�
�рj�FDg�v�CV�����3P���#��oz��bq��B"�рj�W�~��>:.#��+��t�:ǎ޹B�@M�x�p8y��;JL:�8��N4����˕.�?���藨>>��8�id9�9�#�j?������RUv<�#�7@N���.H�?O�`˴A�i�w���!�u˳��i�t�=T�m�������<ү�s�;�B�TǎG{�:;@�{�Ġs��ۙ�c҇���;N���6����~�O�.��@�"��"��גׯ��S��s�{�Iϒ�;DU����[���UԱ�#�{1PNy��L�^����;u���W� ���αS�ma��ӏ a��(���t�M^E����c��Lü�M�x��.e�UV� ���<���� d�qo������4�������1�-4Y|���y{����ȱE�@�!27,�����ǁ��Rޮ�ºP��"�
�C�jd��{Jwф�:y� H���aP��=8��iǘ�ٕei%�@��[Ȓ�'�5��^��n>|8�#�d�a|;"u�����A�Oy��yd��	���<u-|���}�z߄~��9+��j��ٕe�'�����w{��.�?���G�نq�@�n��wz�W�p�-�~E�܈����{��U�2��?�$.����@���+���T����Ϯ,�#k�?���,�� �H�w3��=e�|��N�k@�� "��H�Ǵ�U��ׁ/���=7"Q�.���<u\F @Z͛�p���Sk�YٴB�ˍ������w��/BEA�%j�� ��~*�B��u��Z6�]���E�h�:��S(��t�wU��D��B�5�+4������0��a�:H4�>�K������y�'�����Q;5����H��=�w�#ǎ�i��l�0���W��Vv�ZK��-q~����F�6Bk�_1���k#�r���I�k#��2�R����+�3�_���veY@D.�W�H�0��^�����+T$p3��5��E1Cq~����,R]�pw�z�'4vYT�9d��(a9�����KA��ڦ��������*�3�Q��.j��x�n��z}S(�������㯃.2�}W��X����!��;�8�^�3��㯃�����Ūc Y�%/����U���sEk�f|c�"R�Bl�\���+�0���� ��B)C�8��.2�� ���n���g�Y#P4Pg ����u�0�=�������ܻK|����������������G�>,�p� H��+b�\�6LveY@������Eֲ���j}ȡ�(�i.�M�\�|@�~0��y�Dا{/�����#���xJ�O�)Ȱy��m\��x�/��|g�}:vi�C��{N���	y{�rX�-�A=�\�m� ��4���$�V]O ŭe����s��
 0\*�ɉB�$^.B�P�8�L ܈0��v��=�E/}���E�~�<�:8 7"�"��W��/���_�GL��{ H��RD����Q��̑n3�V:�۝�#�v���`c�X�C�0���-�F�9˲�,j;yۜ����F���) ;#�(纶�� &����C�s�6�c���į-X5F��^���L� ,2���P�� ̘1��`ƌ)f& 3fL1> ��ώ��Vb���rF_H�C1�p=�/Tα�u�K۱:kp�˴T�I���,�"�_�@#N����6<��ʣ�C�	�v򄬎SzC��1�% 1�NR��m!F��m��6��:�����Q@�6���u=�	�1�������V.!�L�XClm+���6B�,�? 7b�韄�c#`븝���O��{�9�8v�,tb����1c��ș�6�g���[7�s�#�5���^�R�|	@\��P��K�S�K�79QȘ��EC���;̇ ���χ�5m�dW�׀�K�7^~�p�I�/��ⓓh�
L�H;��ED ��[ ��9��u�0�-�[��H�'�?M�mYG�Mc�i.�M�\���8�� ��]��]E��"s�Ў��M����>��H�u�1�|)��ӎ��m���I���) C�ZI��bH�tn/�R7�k���vX~�9����3�G,�|���"��Q��% C�[����)�h�2����P��J��XMPV��� ��: ��#	�+S]�TXjW@���anV�4B�B�P���il3�Q�똮WU b��j��=������F\1-uca���[���s!��&�4p?��n���O6�G��(�P�$V��
I��]OP2ʬ" 1'q`�pD ��]���W�ሀr�����.ʳ��,'��	G���"�7��2�_���r�ǐ<��$ne ��I,�G�*͋@��]�"��ߒPD���"9G��߆20�@	'��/������v9|�D�n�<���Z�7aQ�J
�nϨ�[�D�)��BV1��ƾ�Y�8����/���?phI��j�����l���2}e����,�B��7�ʻ�^���f�9p�Ir�Bl�(�3�KH0��c�.���@f#C�Pta�:�:2k�Mz���]���Y�5����u���α�wn[\7Ddh���1 L�}0�Ү�2�p�
t��?�t|�C�>�Li�;t�� �>���ׁ!�}H�Ʋ�C=|9Q�[�H��T������F� Ĥ�tC˄�b�d�ꇋĄcH��|9�~����o"qY�z����H��S�#���Hy>O�`��.�p�4r������<�sY�{��Q�I�ƨ|��@��&1a�"��
t+�0.b��~-y��<M;�(�X�
A��(�?�<�x&ya�pRnA�>.b����=|6yy/�;z�
飮��y"ye�i�]Ҋ3OzPeމ5j�>���%�
�T��遱��:�� <��ra�q�9R�ԙw�ڃ�-D��I���lQ��~�"b�s�yG0�Y��$TU��c��Ə>7�T��jS�:v	�}��+o�UWL���f/yqUM?1����)U�&o/�I�#M���{��=���T���`Q����^��ze֢j0`r���וd����2���ˤe�oGY���L�y��#��L����̰(�H� ���t�X�A� �~T&��H4��!,tY�eac�s��8�7?_#��±,���!"`]�W��&���E��lD����(������P��^D��F�Bgag�����(!(�j(�.p���V��7��t�N �k���ǖe��,���,��7YA*�M.?^":�,�=�t�Skō����#��?��N"��H�w3����b��`e�2Ra��������1w#���yV,ǫ�~�ׁ/��5�=7"Q�.d����m�PaY���8�sYv-��A���:�!�SZk��G�����t*˳)��� ��
s?"��,�Ϊ�!ݟ��(��.��	-��H�:� ���(���4�
�;�"BҲ��ECf*��!���>�KH�֍�0}����A�����"��i����?��1�ԣcH�ʥ��7��eW�2���+���h���W�yjm$��B����Ȃm$`Y��8�b7�:��H�B$WkYE �3�_��t�A���*8L=��}�k���
	�A���r�Ct���P�_�"���w������2O "�q0���EřC�����+:ȀٽT�m;{Ȁ_hί��>c5���啛�,��Mme�' �v~ŀ��܏��9�:�"��wU��e����A����8�^d���, ���~�<���� �*�L���/y�%g��flc�"R�Bl�\���+�,:�tPg�
�0���*��2T;��"#�0���*�ޅ�رP�r����B�e9hG����E��GQa��%�{�pC�QTW`���E��GQ]�#yZ��9�Wd`�<��6��6, k�C�G�"k�]B]��?���4�ɏ��R６eV "��7a�S���֏\Fi�h�$�G�i�Rn<�@���q��׍<a��9�q޾���` ����,����"?�G��B��HKcKQ}�A����Te�H�] ��dD��_� B��⛜(dL��"��Q���\��$ ��P����8= ����A���A�+�7�I &��ؤ�v���>�`D\��/�?��Ήr�    IEND�B`�            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/dots.png-503527815ff6050c9a751263768a95eb.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://dots.png"
dest_files=[ "res://.import/dots.png-503527815ff6050c9a751263768a95eb.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
shader_type canvas_item;

void fragment(){
	COLOR = texture(TEXTURE, UV);
}

void vertex(){
	VERTEX += vec2(cos(TIME*5.0)*1.0, sin(TIME)*1.0);
}shader_type canvas_item;

void fragment(){
	COLOR = texture(TEXTURE, UV);
	if (COLOR.a > 0.5) {
		COLOR.a = 0.4;
	}
}

void vertex(){
	VERTEX += vec2(cos(TIME/2.0)*4.0, sin(TIME/2.0)*5.0);
}  [general]

singleton=true
load_once=true
symbol_prefix="godot_"
reloadable=false

[entry]

Windows.64="res://bin/win64/release/libgitapi.dll"
X11.64="res://bin/x11/release/libgitapi.so"

[dependencies]

Windows.64=[  ]
X11.64=[  ]
         [gd_resource type="NativeScript" load_steps=2 format=2]

[ext_resource path="res://git_api.gdnlib" type="GDNativeLibrary" id=1]

[resource]
resource_name = "GitAPI"
class_name = "GitAPI"
library = ExtResource( 1 )
script_class_name = "GitAPI"
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
�PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG
      _global_script_classes�                     class         GitAPI        language      NativeScript      path      res://git_api.gdns        base          _global_script_class_icons                GitAPI            application/config/name         EB_Backgrounds     application/run/main_scene         res://Sprite.tscn      application/config/icon         res://icon.png     display/window/size/width            display/window/size/height      �      display/window/size/resizable             gdnative/singletons$               res://git_api.gdnlib)   rendering/environment/default_environment          res://default_env.tres              