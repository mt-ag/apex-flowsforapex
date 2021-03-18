set define off
PROMPT >> Loading Exported Diagrams
PROMPT >> Loading Example "AA2 - Tutorial - Parallel Gateways"
begin
insert into flow_diagrams( dgrm_name, dgrm_version, dgrm_category, dgrm_last_update, dgrm_content )
 values (
'AA2 - Tutorial - Parallel Gateways',
0,
'Tutorials',
timestamp '2021-03-01 00:00:00.000000000 +00:00',
apex_string.join_clob(
  apex_t_varchar2(
  q'[<?xml version='1.0' encoding='UTF-8'?>]'
  , q'[<bpmn:definitions xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' xmlns:bpmn='http://www.omg.org/spec/BPMN/20100524/MODEL' xmlns:bpmndi='http://www.omg.org/spec/BPMN/20100524/DI' xmlns:dc='http://www.omg.org/spec/DD/20100524/DC' xmlns:di='http://www.omg.org/spec/DD/20100524/DI' id='Definitions_1wzb475' targetNamespace='http://bpmn.io/schema/bpmn' exporter='bpmn-js (https://demo.bpmn.io)' exporterVersion='7.2.0'>]'
  , q'[  <bpmn:process id='Process_Tutorial_2' name='Parallel Gateways Tutorial' isExecutable='false'>]'
  , q'[    <bpmn:documentation>Tutorials by Richard Allen.]'
  , q'[Flowquest Consulting.]'
  , q'[twitter: @FlowquestR</bpmn:documentation>]'
  , q'[    <bpmn:startEvent id='Event_1ekt5mq' name='Start AA2'>]'
  , q'[      <bpmn:outgoing>Flow_0ym2y4w</bpmn:outgoing>]'
  , q'[    </bpmn:startEvent>]'
  , q'[    <bpmn:task id='Activity_1xxuo52' name='A'>]'
  , q'[      <bpmn:incoming>Flow_0ym2y4w</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_13o51hn</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_0ym2y4w' sourceRef='Event_1ekt5mq' targetRef='Activity_1xxuo52' />]'
  , q'[    <bpmn:sequenceFlow id='Flow_13o51hn' sourceRef='Activity_1xxuo52' targetRef='Gateway_0gacmud' />]'
  , q'[    <bpmn:parallelGateway id='Gateway_0gacmud' name='B Split'>]'
  , q'[      <bpmn:incoming>Flow_13o51hn</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_1dxi1m8</bpmn:outgoing>]'
  , q'[      <bpmn:outgoing>Flow_0b7spte</bpmn:outgoing>]'
  , q'[      <bpmn:outgoing>Flow_0g77k3n</bpmn:outgoing>]'
  , q'[    </bpmn:parallelGateway>]'
  , q'[    <bpmn:task id='Activity_12vd6sc' name='B2'>]'
  , q'[      <bpmn:incoming>Flow_1dxi1m8</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_16zf3s8</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_1dxi1m8' sourceRef='Gateway_0gacmud' targetRef='Activity_12vd6sc' />]'
  , q'[    <bpmn:sequenceFlow id='Flow_16zf3s8' sourceRef='Activity_12vd6sc' targetRef='Gateway_1khra03' />]'
  , q'[    <bpmn:task id='Activity_0wuljzt' name='B3'>]'
  , q'[      <bpmn:incoming>Flow_0b7spte</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_0krognm</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_0b7spte' sourceRef='Gateway_0gacmud' targetRef='Activity_0wuljzt' />]'
  , q'[    <bpmn:sequenceFlow id='Flow_0krognm' sourceRef='Activity_0wuljzt' targetRef='Gateway_1khra03' />]'
  , q'[    <bpmn:task id='Activity_06fpn0t' name='B1'>]'
  , q'[      <bpmn:incoming>Flow_0g77k3n</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_12s08fn</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_0g77k3n' sourceRef='Gateway_0gacmud' targetRef='Activity_06fpn0t' />]'
  , q'[    <bpmn:sequenceFlow id='Flow_12s08fn' sourceRef='Activity_06fpn0t' targetRef='Gateway_1khra03' />]'
  , q'[    <bpmn:parallelGateway id='Gateway_1khra03' name='B Merge &#38; Synchronise'>]'
  , q'[      <bpmn:incoming>Flow_16zf3s8</bpmn:incoming>]'
  , q'[      <bpmn:incoming>Flow_0krognm</bpmn:incoming>]'
  , q'[      <bpmn:incoming>Flow_12s08fn</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_1jfhl7d</bpmn:outgoing>]'
  , q'[    </bpmn:parallelGateway>]'
  , q'[    <bpmn:task id='Activity_1wamq8j' name='C'>]'
  , q'[      <bpmn:incoming>Flow_1jfhl7d</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_1aygwgq</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_1jfhl7d' sourceRef='Gateway_1khra03' targetRef='Activity_1wamq8j' />]'
  , q'[    <bpmn:sequenceFlow id='Flow_1aygwgq' sourceRef='Activity_1wamq8j' targetRef='Gateway_1lw6nkv' />]'
  , q'[    <bpmn:parallelGateway id='Gateway_1lw6nkv'>]'
  , q'[      <bpmn:incoming>Flow_1aygwgq</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_014mvny</bpmn:outgoing>]'
  , q'[      <bpmn:outgoing>Flow_1orbblw</bpmn:outgoing>]'
  , q'[      <bpmn:outgoing>Flow_1k49en2</bpmn:outgoing>]'
  , q'[    </bpmn:parallelGateway>]'
  , q'[    <bpmn:sequenceFlow id='Flow_014mvny' sourceRef='Gateway_1lw6nkv' targetRef='Gateway_0s1ulva' />]'
  , q'[    <bpmn:sequenceFlow id='Flow_1orbblw' sourceRef='Gateway_1lw6nkv' targetRef='Gateway_10ezijr' />]'
  , q'[    <bpmn:parallelGateway id='Gateway_0s1ulva'>]'
  , q'[      <bpmn:incoming>Flow_014mvny</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_1703f6v</bpmn:outgoing>]'
  , q'[      <bpmn:outgoing>Flow_1lqn8n2</bpmn:outgoing>]'
  , q'[    </bpmn:parallelGateway>]'
  , q'[    <bpmn:parallelGateway id='Gateway_10ezijr'>]'
  , q'[      <bpmn:incoming>Flow_1orbblw</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_1ohb55f</bpmn:outgoing>]'
  , q'[      <bpmn:outgoing>Flow_144kbaj</bpmn:outgoing>]'
  , q'[      <bpmn:outgoing>Flow_19zuvwu</bpmn:outgoing>]'
  , q'[    </bpmn:parallelGateway>]'
  , q'[    <bpmn:task id='Activity_16nxamy' name='D1'>]'
  , q'[      <bpmn:incoming>Flow_1703f6v</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_1dipzc0</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_1703f6v' sourceRef='Gateway_0s1ulva' targetRef='Activity_16nxamy' />]'
  , q'[    <bpmn:task id='Activity_14txpks' name='D2'>]'
  , q'[      <bpmn:incoming>Flow_1dipzc0</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_1qmguin</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_1dipzc0' sourceRef='Activity_16nxamy' targetRef='Activity_14txpks' />]'
  , q'[    <bpmn:endEvent id='Event_1do1crj' name='D End'>]'
  , q'[      <bpmn:incoming>Flow_1qmguin</bpmn:incoming>]'
  , q'[    </bpmn:endEvent>]'
  , q'[    <bpmn:sequenceFlow id='Flow_1qmguin' sourceRef='Activity_14txpks' targetRef='Event_1do1crj' />]'
  , q'[    <bpmn:task id='Activity_0yc7jyq' name='E1'>]'
  , q'[      <bpmn:incoming>Flow_1lqn8n2</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_07xrd12</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_1lqn8n2' sourceRef='Gateway_0s1ulva' targetRef='Activity_0yc7jyq' />]'
  , q'[    <bpmn:task id='Activity_07chlsk' name='E2'>]'
  , q'[      <bpmn:incoming>Flow_07xrd12</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_0jv2zfv</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_07xrd12' sourceRef='Activity_0yc7jyq' targetRef='Activity_07chlsk' />]'
  , q'[    <bpmn:endEvent id='Event_0tj8iv7' name='E End'>]'
  , q'[      <bpmn:incoming>Flow_0jv2zfv</bpmn:incoming>]'
  , q'[    </bpmn:endEvent>]'
  , q'[    <bpmn:sequenceFlow id='Flow_0jv2zfv' sourceRef='Activity_07chlsk' targetRef='Event_0tj8iv7' />]'
  , q'[    <bpmn:task id='Activity_0nuq9gg' name='F'>]'
  , q'[      <bpmn:incoming>Flow_1ohb55f</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_0lud504</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_1ohb55f' sourceRef='Gateway_10ezijr' targetRef='Activity_0nuq9gg' />]'
  , q'[    <bpmn:task id='Activity_0rko617' name='G'>]'
  , q'[      <bpmn:incoming>Flow_144kbaj</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_1c0m2ui</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_144kbaj' sourceRef='Gateway_10ezijr' targetRef='Activity_0rko617' />]'
  , q'[    <bpmn:task id='Activity_04sg1f1' name='H'>]'
  , q'[      <bpmn:incoming>Flow_19zuvwu</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_135t0ky</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_19zuvwu' sourceRef='Gateway_10ezijr' targetRef='Activity_04sg1f1' />]'
  , q'[    <bpmn:exclusiveGateway id='Gateway_0cco76x'>]'
  , q'[      <bpmn:incoming>Flow_1c0m2ui</bpmn:incoming>]'
  , q'[      <bpmn:incoming>Flow_0lud504</bpmn:incoming>]'
  , q'[      <bpmn:incoming>Flow_135t0ky</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_0r82kjo</bpmn:outgoing>]'
  , q'[    </bpmn:exclusiveGateway>]'
  , q'[    <bpmn:sequenceFlow id='Flow_1c0m2ui' sourceRef='Activity_0rko617' targetRef='Gateway_0cco76x' />]'
  , q'[    <bpmn:task id='Activity_0vesmoj' name='J'>]'
  , q'[      <bpmn:incoming>Flow_0r82kjo</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_0eg3kjl</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_0r82kjo' sourceRef='Gateway_0cco76x' targetRef='Activity_0vesmoj' />]'
  , q'[    <bpmn:endEvent id='Event_0zsiv0z' name='J End'>]'
  , q'[      <bpmn:incoming>Flow_0eg3kjl</bpmn:incoming>]'
  , q'[    </bpmn:endEvent>]'
  , q'[    <bpmn:sequenceFlow id='Flow_0eg3kjl' sourceRef='Activity_0vesmoj' targetRef='Event_0zsiv0z' />]'
  , q'[    <bpmn:sequenceFlow id='Flow_0lud504' sourceRef='Activity_0nuq9gg' targetRef='Gateway_0cco76x' />]'
  , q'[    <bpmn:sequenceFlow id='Flow_135t0ky' sourceRef='Activity_04sg1f1' targetRef='Gateway_0cco76x' />]'
  , q'[    <bpmn:task id='Activity_1po2k4u' name='That&#39;s Enough&#10;about&#10;Parallel&#10;Gateways'>]'
  , q'[      <bpmn:incoming>Flow_1k49en2</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_1x47nfa</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_1k49en2' sourceRef='Gateway_1lw6nkv' targetRef='Activity_1po2k4u' />]'
  , q'[    <bpmn:endEvent id='Event_146ot6j' name='The Parallel End'>]'
  , q'[      <bpmn:incoming>Flow_1x47nfa</bpmn:incoming>]'
  , q'[    </bpmn:endEvent>]'
  , q'[    <bpmn:sequenceFlow id='Flow_1x47nfa' sourceRef='Activity_1po2k4u' targetRef='Event_146ot6j' />]'
  , q'[    <bpmn:textAnnotation id='TextAnnotation_1elusm3'>]'
  , q'[      <bpmn:text>The first section here uses a PARALLEL GATEWAY.]'
  , q'[]'
  , q'[When you use a Parallel Gateway, ALL of the forward paths are taken - so tasks B1, B2, and B3 become the current task on their own subflows.]'
  , q'[]'
  , q'[As ALL paths are taken, there are no default paths or process variables required to instruct the gateway.  All paths are taken...]'
  , q'[]'
  , q'[At the end of our parallel section, we have another Parallel Gateway.  This acts as a merge and synchronize gateway to bring all of the sections together again.  Task C only becomes the current tasks when all 3 of B1, B2, and B3 have completed.]'
  , q'[]'
  , q'[Flows for APEX requires that Parallel Gateway areas are balanced if you want to merge them together.  If you want to merge with a closing parallel gateway, all of the paths that start at B Split must go to B Merge.</bpmn:text>]'
  , q'[    </bpmn:textAnnotation>]'
  , q'[    <bpmn:association id='Association_01fj9ha' sourceRef='Activity_1xxuo52' targetRef='TextAnnotation_1elusm3' />]'
  , q'[    <bpmn:textAnnotation id='TextAnnotation_1g5plgd'>]'
  , q'[      <bpmn:text>I have 2 more concepts I want to demo us on here,so this just creates 2 separate paths.</bpmn:text>]'
  , q'[    </bpmn:textAnnotation>]'
  , q'[    <bpmn:association id='Association_0vub955' sourceRef='Gateway_1lw6nkv' targetRef='TextAnnotation_1g5plgd' />]'
  , q'[    <bpmn:textAnnotation id='TextAnnotation_1rkv8we'>]'
  , q'[      <bpmn:text>While we said in the first section (ABC) that any Split &amp; re-merge had to be balanced, that doesn't mean that you have to merge or re-synchronise a parallel section.]'
  , q'[]'
  , q'[]'
  , q'[In this section, we use a Parallel Gateway to create Flow D and Flow E in Parallel. Both sections continue on to their own end Events.</bpmn:text>]'
  , q'[    </bpmn:textAnnotation>]'
  , q'[    <bpmn:association id='Association_09fpsjg' sourceRef='Gateway_0s1ulva' targetRef='TextAnnotation_1rkv8we' />]'
  , q'[    <bpmn:textAnnotation id='TextAnnotation_0d1c0wm'>]'
  , q'[      <bpmn:text>So What's different here is that the Closing Gateway is NOT a Parallel Gateway -- we've used an Exclusive Gateway to Close the Parallel Section. The Exclusive Gateway does not cause the flows to wait until F G and H have all completed.]'
  , q'[]'
  , q'[]'
  , q'[How many times does J get executed?</bpmn:text>]'
  , q'[    </bpmn:textAnnotation>]'
  , q'[    <bpmn:association id='Association_0flsrlo' sourceRef='Gateway_0cco76x' targetRef='TextAnnotation_0d1c0wm' />]'
  , q'[  </bpmn:process>]'
  , q'[  <bpmndi:BPMNDiagram id='BPMNDiagram_1'>]'
  , q'[    <bpmndi:BPMNPlane id='BPMNPlane_1' bpmnElement='Process_Tutorial_2'>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1x47nfa_di' bpmnElement='Flow_1x47nfa'>]'
  , q'[        <di:waypoint x='1460' y='1040' />]'
  , q'[        <di:waypoint x='1762' y='1040' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1k49en2_di' bpmnElement='Flow_1k49en2'>]'
  , q'[        <di:waypoint x='1100' y='525' />]'
  , q'[        <di:waypoint x='1100' y='1040' />]'
  , q'[        <di:waypoint x='1360' y='1040' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_135t0ky_di' bpmnElement='Flow_135t0ky'>]'
  , q'[        <di:waypoint x='1460' y='910' />]'
  , q'[        <di:waypoint x='1560' y='910' />]'
  , q'[        <di:waypoint x='1560' y='825' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0lud504_di' bpmnElement='Flow_0lud504'>]'
  , q'[        <di:waypoint x='1460' y='680' />]'
  , q'[        <di:waypoint x='1560' y='680' />]'
  , q'[        <di:waypoint x='1560' y='775' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0eg3kjl_di' bpmnElement='Flow_0eg3kjl'>]'
  , q'[        <di:waypoint x='1780' y='800' />]'
  , q'[        <di:waypoint x='1862' y='800' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0r82kjo_di' bpmnElement='Flow_0r82kjo'>]'
  , q'[        <di:waypoint x='1585' y='800' />]'
  , q'[        <di:waypoint x='1680' y='800' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1c0m2ui_di' bpmnElement='Flow_1c0m2ui'>]'
  , q'[        <di:waypoint x='1460' y='800' />]'
  , q'[        <di:waypoint x='1535' y='800' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_19zuvwu_di' bpmnElement='Flow_19zuvwu'>]'
  , q'[        <di:waypoint x='1270' y='825' />]'
  , q'[        <di:waypoint x='1270' y='910' />]'
  , q'[        <di:waypoint x='1360' y='910' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_144kbaj_di' bpmnElement='Flow_144kbaj'>]'
  , q'[        <di:waypoint x='1295' y='800' />]'
  , q'[        <di:waypoint x='1360' y='800' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1ohb55f_di' bpmnElement='Flow_1ohb55f'>]'
  , q'[        <di:waypoint x='1270' y='775' />]'
  , q'[        <di:waypoint x='1270' y='680' />]'
  , q'[        <di:waypoint x='1360' y='680' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0jv2zfv_di' bpmnElement='Flow_0jv2zfv'>]'
  , q'[        <di:waypoint x='1660' y='440' />]'
  , q'[        <di:waypoint x='1712' y='440' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_07xrd12_di' bpmnElement='Flow_07xrd12'>]'
  , q'[        <di:waypoint x='1490' y='440' />]'
  , q'[        <di:waypoint x='1560' y='440' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1lqn8n2_di' bpmnElement='Flow_1lqn8n2'>]'
  , q'[        <di:waypoint x='1300' y='355' />]'
  , q'[        <di:waypoint x='1300' y='440' />]'
  , q'[        <di:waypoint x='1390' y='440' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1qmguin_di' bpmnElement='Flow_1qmguin'>]'
  , q'[        <di:waypoint x='1650' y='330' />]'
  , q'[        <di:waypoint x='1712' y='330' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1dipzc0_di' bpmnElement='Flow_1dipzc0'>]'
  , q'[        <di:waypoint x='1490' y='330' />]'
  , q'[        <di:waypoint x='1550' y='330' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1703f6v_di' bpmnElement='Flow_1703f6v'>]'
  , q'[        <di:waypoint x='1325' y='330' />]'
  , q'[        <di:waypoint x='1390' y='330' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1orbblw_di' bpmnElement='Flow_1orbblw'>]'
  , q'[        <di:waypoint x='1100' y='525' />]'
  , q'[        <di:waypoint x='1100' y='800' />]'
  , q'[        <di:waypoint x='1245' y='800' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_014mvny_di' bpmnElement='Flow_014mvny'>]'
  , q'[        <di:waypoint x='1100' y='475' />]'
  , q'[        <di:waypoint x='1100' y='330' />]'
  , q'[        <di:waypoint x='1275' y='330' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1aygwgq_di' bpmnElement='Flow_1aygwgq'>]'
  , q'[        <di:waypoint x='1020' y='500' />]'
  , q'[        <di:waypoint x='1075' y='500' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1jfhl7d_di' bpmnElement='Flow_1jfhl7d'>]'
  , q'[        <di:waypoint x='805' y='500' />]'
  , q'[        <di:waypoint x='920' y='500' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_12s08fn_di' bpmnElement='Flow_12s08fn'>]'
  , q'[        <di:waypoint x='700' y='380' />]'
  , q'[        <di:waypoint x='780' y='380' />]'
  , q'[        <di:waypoint x='780' y='475' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0g77k3n_di' bpmnElement='Flow_0g77k3n'>]'
  , q'[        <di:waypoint x='520' y='475' />]'
  , q'[        <di:waypoint x='520' y='380' />]'
  , q'[        <di:waypoint x='600' y='380' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0krognm_di' bpmnElement='Flow_0krognm'>]'
  , q'[        <di:waypoint x='700' y='610' />]'
  , q'[        <di:waypoint x='780' y='610' />]'
  , q'[        <di:waypoint x='780' y='525' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0b7spte_di' bpmnElement='Flow_0b7spte'>]'
  , q'[        <di:waypoint x='520' y='525' />]'
  , q'[        <di:waypoint x='520' y='610' />]'
  , q'[        <di:waypoint x='600' y='610' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_16zf3s8_di' bpmnElement='Flow_16zf3s8'>]'
  , q'[        <di:waypoint x='700' y='500' />]'
  , q'[        <di:waypoint x='755' y='500' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1dxi1m8_di' bpmnElement='Flow_1dxi1m8'>]'
  , q'[        <di:waypoint x='545' y='500' />]'
  , q'[        <di:waypoint x='600' y='500' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_13o51hn_di' bpmnElement='Flow_13o51hn'>]'
  , q'[        <di:waypoint x='440' y='500' />]'
  , q'[        <di:waypoint x='495' y='500' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0ym2y4w_di' bpmnElement='Flow_0ym2y4w'>]'
  , q'[        <di:waypoint x='288' y='500' />]'
  , q'[        <di:waypoint x='340' y='500' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNShape id='Event_1ekt5mq_di' bpmnElement='Event_1ekt5mq'>]'
  , q'[        <dc:Bounds x='252' y='482' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='246' y='525' width='48' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_1xxuo52_di' bpmnElement='Activity_1xxuo52'>]'
  , q'[        <dc:Bounds x='340' y='460' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Gateway_0nxjl3m_di' bpmnElement='Gateway_0gacmud'>]'
  , q'[        <dc:Bounds x='495' y='475' width='50' height='50' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='464' y='443' width='32' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_12vd6sc_di' bpmnElement='Activity_12vd6sc'>]'
  , q'[        <dc:Bounds x='600' y='460' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_0wuljzt_di' bpmnElement='Activity_0wuljzt'>]'
  , q'[        <dc:Bounds x='600' y='570' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_06fpn0t_di' bpmnElement='Activity_06fpn0t'>]'
  , q'[        <dc:Bounds x='600' y='340' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Gateway_0stnt0g_di' bpmnElement='Gateway_1khra03'>]'
  , q'[        <dc:Bounds x='755' y='475' width='50' height='50' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='799' y='456' width='61' height='27' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_1wamq8j_di' bpmnElement='Activity_1wamq8j'>]'
  , q'[        <dc:Bounds x='920' y='460' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Gateway_0novg93_di' bpmnElement='Gateway_1lw6nkv'>]'
  , q'[        <dc:Bounds x='1075' y='475' width='50' height='50' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Gateway_0srgw3z_di' bpmnElement='Gateway_0s1ulva'>]'
  , q'[        <dc:Bounds x='1275' y='305' width='50' height='50' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Gateway_1kn2ff9_di' bpmnElement='Gateway_10ezijr'>]'
  , q'[        <dc:Bounds x='1245' y='775' width='50' height='50' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_16nxamy_di' bpmnElement='Activity_16nxamy'>]'
  , q'[        <dc:Bounds x='1390' y='290' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_14txpks_di' bpmnElement='Activity_14txpks'>]'
  , q'[        <dc:Bounds x='1550' y='290' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Event_1do1crj_di' bpmnElement='Event_1do1crj'>]'
  , q'[        <dc:Bounds x='1712' y='312' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1715' y='355' width='31' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_0yc7jyq_di' bpmnElement='Activity_0yc7jyq'>]'
  , q'[        <dc:Bounds x='1390' y='400' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_07chlsk_di' bpmnElement='Activity_07chlsk'>]'
  , q'[        <dc:Bounds x='1560' y='400' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Event_0tj8iv7_di' bpmnElement='Event_0tj8iv7'>]'
  , q'[        <dc:Bounds x='1712' y='422' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1715' y='465' width='30' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_0nuq9gg_di' bpmnElement='Activity_0nuq9gg'>]'
  , q'[        <dc:Bounds x='1360' y='640' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_0rko617_di' bpmnElement='Activity_0rko617'>]'
  , q'[        <dc:Bounds x='1360' y='760' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_04sg1f1_di' bpmnElement='Activity_04sg1f1'>]'
  , q'[        <dc:Bounds x='1360' y='870' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Gateway_0cco76x_di' bpmnElement='Gateway_0cco76x' isMarkerVisible='true'>]'
  , q'[        <dc:Bounds x='1535' y='775' width='50' height='50' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_0vesmoj_di' bpmnElement='Activity_0vesmoj'>]'
  , q'[        <dc:Bounds x='1680' y='760' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Event_0zsiv0z_di' bpmnElement='Event_0zsiv0z'>]'
  , q'[        <dc:Bounds x='1862' y='782' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1866' y='825' width='29' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_1po2k4u_di' bpmnElement='Activity_1po2k4u'>]'
  , q'[        <dc:Bounds x='1360' y='1000' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Event_146ot6j_di' bpmnElement='Event_146ot6j'>]'
  , q'[        <dc:Bounds x='1762' y='1022' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1739' y='1065' width='82' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='TextAnnotation_1elusm3_di' bpmnElement='TextAnnotation_1elusm3'>]'
  , q'[        <dc:Bounds x='440' y='100' width='580' height='222' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='TextAnnotation_1g5plgd_di' bpmnElement='TextAnnotation_1g5plgd'>]'
  , q'[        <dc:Bounds x='1130' y='390' width='100' height='96' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='TextAnnotation_1rkv8we_di' bpmnElement='TextAnnotation_1rkv8we'>]'
  , q'[        <dc:Bounds x='1330' y='100' width='407' height='130' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='TextAnnotation_0d1c0wm_di' bpmnElement='TextAnnotation_0d1c0wm'>]'
  , q'[        <dc:Bounds x='1319' y='510' width='501' height='100' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNEdge id='Association_01fj9ha_di' bpmnElement='Association_01fj9ha'>]'
  , q'[        <di:waypoint x='403' y='460' />]'
  , q'[        <di:waypoint x='448' y='322' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Association_0vub955_di' bpmnElement='Association_0vub955'>]'
  , q'[        <di:waypoint x='1111' y='486' />]'
  , q'[        <di:waypoint x='1130' y='464' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Association_09fpsjg_di' bpmnElement='Association_09fpsjg'>]'
  , q'[        <di:waypoint x='1307' y='312' />]'
  , q'[        <di:waypoint x='1340' y='230' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Association_0flsrlo_di' bpmnElement='Association_0flsrlo'>]'
  , q'[        <di:waypoint x='1569' y='784' />]'
  , q'[        <di:waypoint x='1623' y='610' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[    </bpmndi:BPMNPlane>]'
  , q'[  </bpmndi:BPMNDiagram>]'
  , q'[</bpmn:definitions>]'
  , q'[]'
  )
));
commit;
end;
/
 
PROMPT >> Example "AA2 - Tutorial - Parallel Gateways - v0" loaded.
PROMPT >> ========================================================
