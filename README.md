## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_ncloud"></a> [ncloud](#provider\_ncloud) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [ncloud_nks_node_pool.nks_node_pool](https://registry.terraform.io/providers/hashicorp/ncloud/latest/docs/resources/nks_node_pool) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_autoscale"></a> [autoscale](#input\_autoscale) | (Optional) Auto scaling configuration.<br>  - enabled - (Required) Auto scaling availability.<br>  - max - (Required) Maximum number of nodes available for auto scaling.<br>  - min - (Required) Minimum number of nodes available for auto scaling. | <pre>object({<br>    enabled = bool<br>    max     = number<br>    min     = number<br>  })</pre> | `null` | no |
| <a name="input_cluster_uuid"></a> [cluster\_uuid](#input\_cluster\_uuid) | (Required) Cluster uuid. | `string` | n/a | yes |
| <a name="input_label"></a> [label](#input\_label) | (Optional) NodePool label.<br>  - key - (Required) Label key.<br>  - value - (Required) Label value. | <pre>object({<br>    key   = string<br>    value = string<br>  })</pre> | `null` | no |
| <a name="input_node_count"></a> [node\_count](#input\_node\_count) | (Required) Number of nodes. | `number` | n/a | yes |
| <a name="input_node_pool_name"></a> [node\_pool\_name](#input\_node\_pool\_name) | (Required) Node pool name. | `string` | n/a | yes |
| <a name="input_product_code"></a> [product\_code](#input\_product\_code) | (Optional) Product code. Required for XEN/RHV cluster nodepool. | `string` | `null` | no |
| <a name="input_software_code"></a> [software\_code](#input\_software\_code) | (Optional) Server image code. | `string` | `null` | no |
| <a name="input_taint"></a> [taint](#input\_taint) | (Optional) NodePool taint.<br>  - key - (Required) Taint key.<br>  - value - (Required) Taint value.<br>  - effect - (Required) Taint effect. | <pre>object({<br>    key    = string<br>    value  = string<br>    effect = string<br>  })</pre> | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_container_version"></a> [container\_version](#output\_container\_version) | Container version of node. |
| <a name="output_id"></a> [id](#output\_id) | The ID of nodepool. (cluster\_uuid:node\_pool\_name) |
| <a name="output_instance_no"></a> [instance\_no](#output\_instance\_no) | The ID of server instance. |
| <a name="output_kernel_version"></a> [kernel\_version](#output\_kernel\_version) | kernel version of node. |
| <a name="output_name"></a> [name](#output\_name) | The name of Server instance. |
| <a name="output_node_status"></a> [node\_status](#output\_node\_status) | Node Status. |
| <a name="output_nodes"></a> [nodes](#output\_nodes) | Running nodes in nodepool. |
| <a name="output_private_ip"></a> [private\_ip](#output\_private\_ip) | Private IP. |
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | Public IP. |
| <a name="output_spec"></a> [spec](#output\_spec) | Server spec. |
㰊ⴡ‭䕂䥇彎䙔䑟䍏⁓ⴭਾ⌣删煥極敲敭瑮ੳ上⁯敲畱物浥湥獴ਮ⌊‣牐癯摩牥ੳ簊丠浡⁥⁼敖獲潩⁮੼⵼ⴭⴭ簭ⴭⴭⴭⴭ簭簊㰠⁡慮敭∽牰癯摩牥湟汣畯≤㰾愯‾湛汣畯嵤⌨牰癯摩牥彜据潬摵 ⁼⽮⁡੼⌊‣潍畤敬ੳ上⁯潭畤敬⹳ਊ⌣删獥畯捲獥ਊ⁼慎敭簠吠灹⁥੼⵼ⴭⴭ簭ⴭⴭⴭ੼⁼湛汣畯彤歮彳潮敤灟潯⹬歮彳潮敤灟潯嵬栨瑴獰⼺爯来獩牴⹹整牲晡牯⹭潩瀯潲楶敤獲丯癡牥汃畯偤慬晴牯⽭据潬摵氯瑡獥⽴潤獣爯獥畯捲獥港獫湟摯彥潰汯 ⁼敲潳牵散簠ਊ⌣䤠灮瑵ੳ簊丠浡⁥⁼敄捳楲瑰潩⁮⁼祔数簠䐠晥畡瑬簠删煥極敲⁤੼⵼ⴭⴭ簭ⴭⴭⴭⴭⴭⴭ簭ⴭⴭⴭ⵼ⴭⴭⴭⴭ㩼ⴭⴭⴭⴭ簺簊㰠⁡慮敭∽湩異彴畡潴捳污≥㰾愯‾慛瑵獯慣敬⡝椣灮瑵彜畡潴捳污⥥簠⠠灏楴湯污 畁潴猠慣楬杮挠湯楦畧慲楴湯㰮牢㸯†‭湥扡敬⁤‭刨煥極敲⥤䄠瑵⁯捳污湩⁧癡楡慬楢楬祴㰮牢㸯†‭慭⁸‭刨煥極敲⥤䴠硡浩浵渠浵敢⁲景渠摯獥愠慶汩扡敬映牯愠瑵⁯捳污湩⹧戼⽲‾ⴠ洠湩ⴠ⠠敒畱物摥 楍楮畭⁭畮扭牥漠⁦潮敤⁳癡楡慬汢⁥潦⁲畡潴猠慣楬杮‮⁼瀼敲漾橢捥⡴㱻牢㸯††湥扡敬⁤‽潢汯戼⽲‾†洠硡††㴠渠浵敢㱲牢㸯††業⁮††‽畮扭牥戼⽲‾素㰩瀯敲‾⁼瀼敲笾戼⽲‾∠湥扡敬≤›慦獬ⱥ戼⽲‾∠慭≸›畮汬㰬牢㸯†洢湩㨢渠汵㱬牢㸯㱽瀯敲‾⁼潮簠簊㰠⁡慮敭∽湩異彴汣獵整彲畵摩㸢⼼㹡嬠汣獵整屲畟極嵤⌨湩異屴损畬瑳牥彜畵摩 ⁼刨煥極敲⥤䌠畬瑳牥甠極⹤簠怠瑳楲杮⁠⁼⽮⁡⁼敹⁳੼⁼愼渠浡㵥椢灮瑵歟猸癟牥楳湯㸢⼼㹡嬠㡫屳癟牥楳湯⡝椣灮瑵彜㡫屳癟牥楳湯 ⁼伨瑰潩慮⥬䬠扵牥敮整⁳敶獲潩⹮传汮⁹灵牧摡⁥獩猠灵潰瑲摥‮⁼獠牴湩恧簠怠畮汬⁠⁼潮簠簊㰠⁡慮敭∽湩異彴慬敢≬㰾愯‾汛扡汥⡝椣灮瑵彜慬敢⥬簠⠠灏楴湯污 潎敤潐汯氠扡汥㰮牢㸯†‭敫⁹‭刨煥極敲⥤䰠扡汥欠祥㰮牢㸯†‭慶畬⁥‭刨煥極敲⥤䰠扡汥瘠污敵‮⁼瀼敲漾橢捥⡴㱻牢㸯††敫⁹†‽瑳楲杮戼⽲‾†瘠污敵㴠猠牴湩㱧牢㸯†⥽⼼牰㹥簠怠畮汬⁠⁼潮簠簊㰠⁡慮敭∽湩異彴潮敤损畯瑮㸢⼼㹡嬠潮敤彜潣湵嵴⌨湩異屴湟摯履损畯瑮 ⁼伨瑰潩慮⥬丠浵敢⁲景渠摯獥‮敒畱物摥眠敨⁮畡潴捳污⁥獩搠獩扡敬⹤簠怠畮扭牥⁠⁼湠汵恬簠渠⁯੼⁼愼渠浡㵥椢灮瑵湟摯彥潰汯湟浡≥㰾愯‾湛摯履灟潯屬湟浡嵥⌨湩異屴湟摯履灟潯屬湟浡⥥簠⠠敒畱物摥 潎敤瀠潯⁬慮敭‮⁼獠牴湩恧簠渠愯簠礠獥簠簊㰠⁡慮敭∽湩異彴牰摯捵彴潣敤㸢⼼㹡嬠牰摯捵屴损摯嵥⌨湩異屴灟潲畤瑣彜潣敤 ⁼伨瑰潩慮⥬倠潲畤瑣挠摯⹥删煥極敲⁤潦⁲䕘⽎䡒⁖汣獵整⁲潮敤潰汯‮⁼獠牴湩恧簠怠畮汬⁠⁼潮簠簊㰠⁡慮敭∽湩異彴敳癲牥獟数彣潣敤㸢⼼㹡嬠敳癲牥彜灳捥彜潣敤⡝椣灮瑵彜敳癲牥彜灳捥彜潣敤 ⁼伨瑰潩慮⥬匠牥敶⁲灳捥挠摯⹥删煥極敲⁤潦⁲噋⁍汣獵整⁲潮敤潰汯‮⁼獠牴湩恧簠怠畮汬⁠⁼潮簠簊㰠⁡慮敭∽湩異彴潳瑦慷敲损摯≥㰾愯‾獛景睴牡履损摯嵥⌨湩異屴獟景睴牡履损摯⥥簠⠠灏楴湯污 敓癲牥椠慭敧挠摯⹥簠怠瑳楲杮⁠⁼湠汵恬簠渠⁯੼⁼愼渠浡㵥椢灮瑵獟潴慲敧獟穩≥㰾愯‾獛潴慲敧彜楳敺⡝椣灮瑵彜瑳牯条履獟穩⥥簠⠠灏楴湯污 敄慦汵⁴瑳牯条⁥楳敺映牯䬠䵖渠摯灥潯⹬䐠晥畡瑬椠⁳〱䜰⹂簠怠畮扭牥⁠⁼ㅠ〰⁠⁼潮簠簊㰠⁡慮敭∽湩異彴畳湢瑥湟彯楬瑳㸢⼼㹡嬠畳湢瑥彜潮彜楬瑳⡝椣灮瑵彜畳湢瑥彜潮彜楬瑳 ⁼伨瑰潩慮⥬匠扵敮⁴潮氠獩⹴簠怠楬瑳猨牴湩⥧⁠⁼湠汵恬簠渠⁯੼⁼愼渠浡㵥椢灮瑵瑟楡瑮㸢⼼㹡嬠慴湩嵴⌨湩異屴瑟楡瑮 ⁼伨瑰潩慮⥬丠摯健潯⁬慴湩⹴戼⽲‾ⴠ欠祥ⴠ⠠敒畱物摥 慔湩⁴敫⹹戼⽲‾ⴠ瘠污敵ⴠ⠠敒畱物摥 慔湩⁴慶畬⹥戼⽲‾ⴠ攠晦捥⁴‭刨煥極敲⥤吠楡瑮攠晦捥⹴簠㰠牰㹥扯敪瑣笨戼⽲‾†欠祥††‽瑳楲杮戼⽲‾†瘠污敵†‽瑳楲杮戼⽲‾†攠晦捥⁴‽瑳楲杮戼⽲‾素㰩瀯敲‾⁼湠汵恬簠渠⁯੼⌊‣畏灴瑵ੳ簊丠浡⁥⁼敄捳楲瑰潩⁮੼⵼ⴭⴭ簭ⴭⴭⴭⴭⴭⴭ簭簊㰠⁡慮敭∽畯灴瑵楟≤㰾愯‾楛嵤⌨畯灴瑵彜摩 ⁼桔⁥䑉漠⁦潮敤潰汯‮挨畬瑳牥彜畵摩渺摯履灟潯屬湟浡⥥簠簊㰠⁡慮敭∽畯灴瑵楟獮慴据彥潮㸢⼼㹡嬠湩瑳湡散彜潮⡝漣瑵異屴楟獮慴据履湟⥯簠䤠獮慴据⁥潎‮੼⁼愼渠浡㵥漢瑵異彴慮敭㸢⼼㹡嬠慮敭⡝漣瑵異屴湟浡⥥簠吠敨渠浡⁥景匠牥敶⁲湩瑳湡散‮੼⁼愼渠浡㵥漢瑵異彴潮敤损湯慴湩牥癟牥楳湯㸢⼼㹡嬠潮敤彜潣瑮楡敮屲癟牥楳湯⡝漣瑵異屴湟摯履损湯慴湩牥彜敶獲潩⥮簠䌠湯慴湩牥瘠牥楳湯漠⁦潮敤‮੼⁼愼渠浡㵥漢瑵異彴潮敤楟獮慴据彥潮㸢⼼㹡嬠潮敤彜湩瑳湡散彜潮⡝漣瑵異屴湟摯履楟獮慴据履湟⥯簠吠敨䤠⁄景猠牥敶⁲湩瑳湡散‮੼⁼愼渠浡㵥漢瑵異彴潮敤歟牥敮彬敶獲潩≮㰾愯‾湛摯履歟牥敮屬癟牥楳湯⡝漣瑵異屴湟摯履歟牥敮屬癟牥楳湯 ⁼敋湲汥瘠牥楳湯漠⁦潮敤‮੼⁼愼渠浡㵥漢瑵異彴潮敤灟楲慶整楟≰㰾愯‾湛摯履灟楲慶整彜灩⡝漣瑵異屴湟摯履灟楲慶整彜灩 ⁼牐癩瑡⁥偉‮੼⁼愼渠浡㵥漢瑵異彴潮敤灟扵楬彣灩㸢⼼㹡嬠潮敤彜異汢捩彜灩⡝漣瑵異屴湟摯履灟扵楬屣楟⥰簠倠扵楬⁣偉‮੼⁼愼渠浡㵥漢瑵異彴潮敤獟数≣㰾愯‾湛摯履獟数嵣⌨畯灴瑵彜潮敤彜灳捥 ⁼敓癲牥猠数⹣簠簊㰠⁡慮敭∽畯灴瑵湟摯彥瑳瑡獵㸢⼼㹡嬠潮敤彜瑳瑡獵⡝漣瑵異屴湟摯履獟慴畴⥳簠丠摯⁥瑓瑡獵‮੼⁼愼渠浡㵥漢瑵異彴潮敤≳㰾愯‾湛摯獥⡝漣瑵異屴湟摯獥 ⁼畒湮湩⁧潮敤⁳湩渠摯灥潯⹬簠㰊ⴡ‭久彄䙔䑟䍏⁓ⴭ�