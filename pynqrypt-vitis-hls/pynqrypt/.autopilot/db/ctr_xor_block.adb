<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="17">
  <syndb class_id="0" tracking_level="0" version="0">
    <userIPLatency>-1</userIPLatency>
    <userIPName/>
    <cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
      <name>ctr_xor_block</name>
      <module_structure>Sequential</module_structure>
      <ret_bitwidth>128</ret_bitwidth>
      <ports class_id="2" tracking_level="0" version="0">
        <count>2</count>
        <item_version>0</item_version>
        <item class_id="3" tracking_level="1" version="0" object_id="_1">
          <Value class_id="4" tracking_level="0" version="0">
            <Obj class_id="5" tracking_level="0" version="0">
              <type>1</type>
              <id>1</id>
              <name>p_read</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <contextNormFuncName/>
              <inlineStackInfo class_id="6" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <control/>
              <opType/>
              <implIndex/>
              <coreName/>
              <isStorage>0</isStorage>
              <storageDepth>0</storageDepth>
              <coreId>0</coreId>
              <rtlModuleName/>
            </Obj>
            <bitwidth>128</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>0</if_type>
          <array_size>0</array_size>
          <bit_vecs class_id="7" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_2">
          <Value>
            <Obj>
              <type>1</type>
              <id>2</id>
              <name>p_read2</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <contextNormFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <control/>
              <opType/>
              <implIndex/>
              <coreName/>
              <isStorage>0</isStorage>
              <storageDepth>0</storageDepth>
              <coreId>2384437767</coreId>
              <rtlModuleName/>
            </Obj>
            <bitwidth>128</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>0</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
      </ports>
      <nodes class_id="8" tracking_level="0" version="0">
        <count>4</count>
        <item_version>0</item_version>
        <item class_id="9" tracking_level="1" version="0" object_id="_3">
          <Value>
            <Obj>
              <type>0</type>
              <id>3</id>
              <name>p_read_2</name>
              <fileName>/xilinx/Vitis_HLS/2022.2/common/technology/autopilot/ap_int_base.h</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>859</lineNumber>
              <contextFuncName>operator^=&amp;lt;128, false&amp;gt;</contextFuncName>
              <contextNormFuncName>operator_xor_assign_128_false</contextNormFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item class_id="10" tracking_level="0" version="0">
                  <first>/home/mrindeciso/Documents/pynqrypt</first>
                  <second class_id="11" tracking_level="0" version="0">
                    <count>1</count>
                    <item_version>0</item_version>
                    <item class_id="12" tracking_level="0" version="0">
                      <first class_id="13" tracking_level="0" version="0">
                        <first>/xilinx/Vitis_HLS/2022.2/common/technology/autopilot/ap_int_base.h</first>
                        <second>operator^=&amp;lt;128, false&amp;gt;</second>
                      </first>
                      <second>859</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <control>auto</control>
              <opType>fifo</opType>
              <implIndex>srl</implIndex>
              <coreName>FIFO_SRL</coreName>
              <isStorage>0</isStorage>
              <storageDepth>0</storageDepth>
              <coreId>81</coreId>
              <rtlModuleName/>
            </Obj>
            <bitwidth>128</bitwidth>
          </Value>
          <oprand_edges>
            <count>2</count>
            <item_version>0</item_version>
            <item>9</item>
            <item>10</item>
          </oprand_edges>
          <opcode>read</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>3.63</m_delay>
          <m_topoIndex>1</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_4">
          <Value>
            <Obj>
              <type>0</type>
              <id>4</id>
              <name>p_read_3</name>
              <fileName>/xilinx/Vitis_HLS/2022.2/common/technology/autopilot/ap_int_base.h</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>859</lineNumber>
              <contextFuncName>operator^=&amp;lt;128, false&amp;gt;</contextFuncName>
              <contextNormFuncName>operator_xor_assign_128_false</contextNormFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>/home/mrindeciso/Documents/pynqrypt</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>/xilinx/Vitis_HLS/2022.2/common/technology/autopilot/ap_int_base.h</first>
                        <second>operator^=&amp;lt;128, false&amp;gt;</second>
                      </first>
                      <second>859</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <control>auto</control>
              <opType>fifo</opType>
              <implIndex>srl</implIndex>
              <coreName>FIFO_SRL</coreName>
              <isStorage>0</isStorage>
              <storageDepth>0</storageDepth>
              <coreId>81</coreId>
              <rtlModuleName/>
            </Obj>
            <bitwidth>128</bitwidth>
          </Value>
          <oprand_edges>
            <count>2</count>
            <item_version>0</item_version>
            <item>11</item>
            <item>12</item>
          </oprand_edges>
          <opcode>read</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>3.63</m_delay>
          <m_topoIndex>2</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_5">
          <Value>
            <Obj>
              <type>0</type>
              <id>5</id>
              <name>xor_ln859</name>
              <fileName>/xilinx/Vitis_HLS/2022.2/common/technology/autopilot/ap_int_base.h</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>859</lineNumber>
              <contextFuncName>operator^=&amp;lt;128, false&amp;gt;</contextFuncName>
              <contextNormFuncName>operator_xor_assign_128_false</contextNormFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>/home/mrindeciso/Documents/pynqrypt</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>/xilinx/Vitis_HLS/2022.2/common/technology/autopilot/ap_int_base.h</first>
                        <second>operator^=&amp;lt;128, false&amp;gt;</second>
                      </first>
                      <second>859</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName>xor_ln859_fu_18_p2</rtlName>
              <control>auto</control>
              <opType>xor</opType>
              <implIndex>auto</implIndex>
              <coreName>LogicGate</coreName>
              <isStorage>0</isStorage>
              <storageDepth>0</storageDepth>
              <coreId>74</coreId>
              <rtlModuleName/>
            </Obj>
            <bitwidth>128</bitwidth>
          </Value>
          <oprand_edges>
            <count>2</count>
            <item_version>0</item_version>
            <item>13</item>
            <item>14</item>
          </oprand_edges>
          <opcode>xor</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>1.03</m_delay>
          <m_topoIndex>3</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_6">
          <Value>
            <Obj>
              <type>0</type>
              <id>6</id>
              <name>_ln25</name>
              <fileName>hw-impl/src/pynqrypt.cpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>25</lineNumber>
              <contextFuncName>ctr_encrypt</contextFuncName>
              <contextNormFuncName>ctr_encrypt</contextNormFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>/home/mrindeciso/Documents/pynqrypt</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>hw-impl/src/pynqrypt.cpp</first>
                        <second>ctr_encrypt</second>
                      </first>
                      <second>25</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <control/>
              <opType/>
              <implIndex/>
              <coreName/>
              <isStorage>0</isStorage>
              <storageDepth>0</storageDepth>
              <coreId>2384060672</coreId>
              <rtlModuleName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>15</item>
          </oprand_edges>
          <opcode>ret</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>4</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
      </nodes>
      <consts class_id="15" tracking_level="0" version="0">
        <count>0</count>
        <item_version>0</item_version>
      </consts>
      <blocks class_id="16" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="17" tracking_level="1" version="0" object_id="_7">
          <Obj>
            <type>3</type>
            <id>7</id>
            <name>ctr_xor_block</name>
            <fileName/>
            <fileDirectory/>
            <lineNumber>0</lineNumber>
            <contextFuncName/>
            <contextNormFuncName/>
            <inlineStackInfo>
              <count>0</count>
              <item_version>0</item_version>
            </inlineStackInfo>
            <originalName/>
            <rtlName/>
            <control/>
            <opType/>
            <implIndex/>
            <coreName/>
            <isStorage>0</isStorage>
            <storageDepth>0</storageDepth>
            <coreId>2384530640</coreId>
            <rtlModuleName/>
          </Obj>
          <node_objs>
            <count>4</count>
            <item_version>0</item_version>
            <item>3</item>
            <item>4</item>
            <item>5</item>
            <item>6</item>
          </node_objs>
        </item>
      </blocks>
      <edges class_id="18" tracking_level="0" version="0">
        <count>5</count>
        <item_version>0</item_version>
        <item class_id="19" tracking_level="1" version="0" object_id="_8">
          <id>10</id>
          <edge_type>1</edge_type>
          <source_obj>2</source_obj>
          <sink_obj>3</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="19" object_id="_9">
          <id>12</id>
          <edge_type>1</edge_type>
          <source_obj>1</source_obj>
          <sink_obj>4</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="19" object_id="_10">
          <id>13</id>
          <edge_type>1</edge_type>
          <source_obj>4</source_obj>
          <sink_obj>5</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="19" object_id="_11">
          <id>14</id>
          <edge_type>1</edge_type>
          <source_obj>3</source_obj>
          <sink_obj>5</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="19" object_id="_12">
          <id>15</id>
          <edge_type>1</edge_type>
          <source_obj>5</source_obj>
          <sink_obj>6</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
      </edges>
    </cdfg>
    <cdfg_regions class_id="20" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="21" tracking_level="1" version="0" object_id="_13">
        <mId>1</mId>
        <mTag>ctr_xor_block</mTag>
        <mNormTag>ctr_xor_block</mNormTag>
        <mType>0</mType>
        <sub_regions>
          <count>0</count>
          <item_version>0</item_version>
        </sub_regions>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>7</item>
        </basic_blocks>
        <mII>-1</mII>
        <mDepth>-1</mDepth>
        <mMinTripCount>-1</mMinTripCount>
        <mMaxTripCount>-1</mMaxTripCount>
        <mMinLatency>0</mMinLatency>
        <mMaxLatency>0</mMaxLatency>
        <mIsDfPipe>0</mIsDfPipe>
        <mDfPipe class_id="-1"/>
      </item>
    </cdfg_regions>
    <fsm class_id="23" tracking_level="1" version="0" object_id="_14">
      <states class_id="24" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="25" tracking_level="1" version="0" object_id="_15">
          <id>1</id>
          <operations class_id="26" tracking_level="0" version="0">
            <count>4</count>
            <item_version>0</item_version>
            <item class_id="27" tracking_level="1" version="0" object_id="_16">
              <id>3</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="27" object_id="_17">
              <id>4</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="27" object_id="_18">
              <id>5</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="27" object_id="_19">
              <id>6</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
          </operations>
        </item>
      </states>
      <transitions class_id="28" tracking_level="0" version="0">
        <count>0</count>
        <item_version>0</item_version>
      </transitions>
    </fsm>
    <res class_id="29" tracking_level="1" version="0" object_id="_20">
      <dp_component_resource class_id="30" tracking_level="0" version="0">
        <count>0</count>
        <item_version>0</item_version>
      </dp_component_resource>
      <dp_expression_resource>
        <count>2</count>
        <item_version>0</item_version>
        <item class_id="31" tracking_level="0" version="0">
          <first>ap_block_state1 ( or ) </first>
          <second class_id="32" tracking_level="0" version="0">
            <count>4</count>
            <item_version>0</item_version>
            <item class_id="33" tracking_level="0" version="0">
              <first>(0P0)</first>
              <second>1</second>
            </item>
            <item>
              <first>(1P1)</first>
              <second>1</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>2</second>
            </item>
          </second>
        </item>
        <item>
          <first>xor_ln859_fu_18_p2 ( xor ) </first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0P0)</first>
              <second>128</second>
            </item>
            <item>
              <first>(1P1)</first>
              <second>128</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>128</second>
            </item>
          </second>
        </item>
      </dp_expression_resource>
      <dp_fifo_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_fifo_resource>
      <dp_memory_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_resource>
      <dp_multiplexer_resource>
        <count>2</count>
        <item_version>0</item_version>
        <item>
          <first>ap_done</first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0Size)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>1</second>
            </item>
            <item>
              <first>(2Count)</first>
              <second>2</second>
            </item>
            <item>
              <first>LUT</first>
              <second>9</second>
            </item>
          </second>
        </item>
        <item>
          <first>ap_return</first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0Size)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>128</second>
            </item>
            <item>
              <first>(2Count)</first>
              <second>256</second>
            </item>
            <item>
              <first>LUT</first>
              <second>9</second>
            </item>
          </second>
        </item>
      </dp_multiplexer_resource>
      <dp_register_resource>
        <count>3</count>
        <item_version>0</item_version>
        <item>
          <first>ap_CS_fsm</first>
          <second>
            <count>3</count>
            <item_version>0</item_version>
            <item>
              <first>(Bits)</first>
              <second>1</second>
            </item>
            <item>
              <first>(Consts)</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>1</second>
            </item>
          </second>
        </item>
        <item>
          <first>ap_done_reg</first>
          <second>
            <count>3</count>
            <item_version>0</item_version>
            <item>
              <first>(Bits)</first>
              <second>1</second>
            </item>
            <item>
              <first>(Consts)</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>1</second>
            </item>
          </second>
        </item>
        <item>
          <first>ap_return_preg</first>
          <second>
            <count>3</count>
            <item_version>0</item_version>
            <item>
              <first>(Bits)</first>
              <second>128</second>
            </item>
            <item>
              <first>(Consts)</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>128</second>
            </item>
          </second>
        </item>
      </dp_register_resource>
      <dp_dsp_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_dsp_resource>
      <dp_component_map class_id="34" tracking_level="0" version="0">
        <count>0</count>
        <item_version>0</item_version>
      </dp_component_map>
      <dp_expression_map>
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="35" tracking_level="0" version="0">
          <first>xor_ln859_fu_18_p2 ( xor ) </first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>5</item>
          </second>
        </item>
      </dp_expression_map>
      <dp_fifo_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_fifo_map>
      <dp_memory_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_map>
    </res>
    <node_label_latency class_id="36" tracking_level="0" version="0">
      <count>4</count>
      <item_version>0</item_version>
      <item class_id="37" tracking_level="0" version="0">
        <first>3</first>
        <second class_id="38" tracking_level="0" version="0">
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>4</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>5</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>6</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
    </node_label_latency>
    <bblk_ent_exit class_id="39" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="40" tracking_level="0" version="0">
        <first>7</first>
        <second class_id="41" tracking_level="0" version="0">
          <first>0</first>
          <second>0</second>
        </second>
      </item>
    </bblk_ent_exit>
    <regions class_id="42" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </regions>
    <dp_fu_nodes class_id="43" tracking_level="0" version="0">
      <count>3</count>
      <item_version>0</item_version>
      <item class_id="44" tracking_level="0" version="0">
        <first>6</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>3</item>
        </second>
      </item>
      <item>
        <first>12</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>4</item>
        </second>
      </item>
      <item>
        <first>18</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>5</item>
        </second>
      </item>
    </dp_fu_nodes>
    <dp_fu_nodes_expression class_id="46" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="47" tracking_level="0" version="0">
        <first>xor_ln859_fu_18</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>5</item>
        </second>
      </item>
    </dp_fu_nodes_expression>
    <dp_fu_nodes_module>
      <count>0</count>
      <item_version>0</item_version>
    </dp_fu_nodes_module>
    <dp_fu_nodes_io>
      <count>2</count>
      <item_version>0</item_version>
      <item>
        <first>p_read_2_read_fu_6</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>3</item>
        </second>
      </item>
      <item>
        <first>p_read_3_read_fu_12</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>4</item>
        </second>
      </item>
    </dp_fu_nodes_io>
    <return_ports>
      <count>1</count>
      <item_version>0</item_version>
      <item>
        <first>ap_return</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>6</item>
        </second>
      </item>
    </return_ports>
    <dp_mem_port_nodes class_id="48" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </dp_mem_port_nodes>
    <dp_reg_nodes>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_nodes>
    <dp_regname_nodes>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_nodes>
    <dp_reg_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_phi>
    <dp_regname_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_phi>
    <dp_port_io_nodes class_id="49" tracking_level="0" version="0">
      <count>2</count>
      <item_version>0</item_version>
      <item class_id="50" tracking_level="0" version="0">
        <first>p_read</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>read</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>4</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>p_read2</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>read</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>3</item>
            </second>
          </item>
        </second>
      </item>
    </dp_port_io_nodes>
    <port2core>
      <count>0</count>
      <item_version>0</item_version>
    </port2core>
    <node2core>
      <count>3</count>
      <item_version>0</item_version>
      <item>
        <first>3</first>
        <second>
          <first>666</first>
          <second>10</second>
        </second>
      </item>
      <item>
        <first>4</first>
        <second>
          <first>666</first>
          <second>10</second>
        </second>
      </item>
      <item>
        <first>5</first>
        <second>
          <first>25</first>
          <second>0</second>
        </second>
      </item>
    </node2core>
  </syndb>
</boost_serialization>
