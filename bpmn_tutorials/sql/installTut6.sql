set define off
PROMPT >> Loading Exported Diagrams
PROMPT >> Loading Example "AA6 - Errors and Escalations"
begin
insert into flow_diagrams( dgrm_name, dgrm_content)
 values (
'AA6 - Errors and Escalations',
apex_string.join_clob(
  apex_t_varchar2(
  q'[<?xml version='1.0' encoding='UTF-8'?>]'
  , q'[<bpmn:definitions xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' xmlns:bpmn='http://www.omg.org/spec/BPMN/20100524/MODEL' xmlns:bpmndi='http://www.omg.org/spec/BPMN/20100524/DI' xmlns:dc='http://www.omg.org/spec/DD/20100524/DC' xmlns:di='http://www.omg.org/spec/DD/20100524/DI' xmlns:apex='http://www.apex.mt-ag.com' id='Definitions_1wzb475' targetNamespace='http://bpmn.io/schema/bpmn' exporter='bpmn-js (https://demo.bpmn.io)' exporterVersion='7.2.0'>]'
  , q'[  <bpmn:process id='Tutorial_AA6' name='Tutorial - Errors and Escalations' isExecutable='false'>]'
  , q'[    <bpmn:documentation>Tutorials by Richard Allen.]'
  , q'[Flowquest Consulting.]'
  , q'[twitter: @FlowquestR</bpmn:documentation>]'
  , q'[    <bpmn:startEvent id='Event_0iygv59'>]'
  , q'[      <bpmn:outgoing>Flow_1gz0sgq</bpmn:outgoing>]'
  , q'[    </bpmn:startEvent>]'
  , q'[    <bpmn:task id='Activity_13yt1ft' name='Tutorial 5&#10;SubProcesses'>]'
  , q'[      <bpmn:incoming>Flow_1gz0sgq</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_1ha31js</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_1gz0sgq' sourceRef='Event_0iygv59' targetRef='Activity_13yt1ft' />]'
  , q'[    <bpmn:sequenceFlow id='Flow_1ha31js' sourceRef='Activity_13yt1ft' targetRef='Activity_1lt3f7j' />]'
  , q'[    <bpmn:subProcess id='Activity_1lt3f7j' name='SubProcess B'>]'
  , q'[      <bpmn:incoming>Flow_1ha31js</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_1trgt3r</bpmn:outgoing>]'
  , q'[      <bpmn:startEvent id='Event_0j57auc' name='A subProcess Starts&#10;with a Start Event'>]'
  , q'[        <bpmn:outgoing>Flow_1bfswcs</bpmn:outgoing>]'
  , q'[      </bpmn:startEvent>]'
  , q'[      <bpmn:task id='Activity_0kcgja9' name='B1'>]'
  , q'[        <bpmn:incoming>Flow_1bfswcs</bpmn:incoming>]'
  , q'[        <bpmn:outgoing>Flow_1dfsgk8</bpmn:outgoing>]'
  , q'[      </bpmn:task>]'
  , q'[      <bpmn:sequenceFlow id='Flow_1bfswcs' sourceRef='Event_0j57auc' targetRef='Activity_0kcgja9' />]'
  , q'[      <bpmn:sequenceFlow id='Flow_1dfsgk8' sourceRef='Activity_0kcgja9' targetRef='Gateway_0tapl6i' />]'
  , q'[      <bpmn:parallelGateway id='Gateway_0tapl6i' name='B Split'>]'
  , q'[        <bpmn:incoming>Flow_1dfsgk8</bpmn:incoming>]'
  , q'[        <bpmn:outgoing>Flow_14jrwrx</bpmn:outgoing>]'
  , q'[        <bpmn:outgoing>Flow_0sw8mct</bpmn:outgoing>]'
  , q'[      </bpmn:parallelGateway>]'
  , q'[      <bpmn:task id='Activity_1n7m2kj' name='B2'>]'
  , q'[        <bpmn:incoming>Flow_14jrwrx</bpmn:incoming>]'
  , q'[        <bpmn:outgoing>Flow_0l8zsga</bpmn:outgoing>]'
  , q'[      </bpmn:task>]'
  , q'[      <bpmn:sequenceFlow id='Flow_14jrwrx' sourceRef='Gateway_0tapl6i' targetRef='Activity_1n7m2kj' />]'
  , q'[      <bpmn:task id='Activity_1ox4cmk' name='B3'>]'
  , q'[        <bpmn:incoming>Flow_0l8zsga</bpmn:incoming>]'
  , q'[        <bpmn:outgoing>Flow_1smtq7r</bpmn:outgoing>]'
  , q'[      </bpmn:task>]'
  , q'[      <bpmn:sequenceFlow id='Flow_0l8zsga' sourceRef='Activity_1n7m2kj' targetRef='Activity_1ox4cmk' />]'
  , q'[      <bpmn:endEvent id='Event_1v77s5u' name='B2 B3 B6 End'>]'
  , q'[        <bpmn:incoming>Flow_1o2xxi5</bpmn:incoming>]'
  , q'[      </bpmn:endEvent>]'
  , q'[      <bpmn:sequenceFlow id='Flow_1smtq7r' sourceRef='Activity_1ox4cmk' targetRef='Gateway_0okheq5' />]'
  , q'[      <bpmn:sequenceFlow id='Flow_0sw8mct' sourceRef='Gateway_0tapl6i' targetRef='Activity_1l75ys0' />]'
  , q'[      <bpmn:subProcess id='Activity_1l75ys0' name='SubProcess B4'>]'
  , q'[        <bpmn:incoming>Flow_0sw8mct</bpmn:incoming>]'
  , q'[        <bpmn:outgoing>Flow_0dxi3lp</bpmn:outgoing>]'
  , q'[        <bpmn:startEvent id='Event_094xygx' name='B4 Start'>]'
  , q'[          <bpmn:outgoing>Flow_1ji74dg</bpmn:outgoing>]'
  , q'[        </bpmn:startEvent>]'
  , q'[        <bpmn:task id='Activity_1rct9yd' name='B4A'>]'
  , q'[          <bpmn:incoming>Flow_1ji74dg</bpmn:incoming>]'
  , q'[          <bpmn:outgoing>Flow_0lkjrzz</bpmn:outgoing>]'
  , q'[        </bpmn:task>]'
  , q'[        <bpmn:sequenceFlow id='Flow_1ji74dg' sourceRef='Event_094xygx' targetRef='Activity_1rct9yd' />]'
  , q'[        <bpmn:task id='Activity_1nqf2t2' name='B4B'>]'
  , q'[          <bpmn:incoming>Flow_1x95h95</bpmn:incoming>]'
  , q'[          <bpmn:outgoing>Flow_0t7vhh2</bpmn:outgoing>]'
  , q'[        </bpmn:task>]'
  , q'[        <bpmn:sequenceFlow id='Flow_0lkjrzz' sourceRef='Activity_1rct9yd' targetRef='Gateway_0qtnlf2' />]'
  , q'[        <bpmn:endEvent id='Event_0ytprrh' name='B4 end'>]'
  , q'[          <bpmn:incoming>Flow_0t7vhh2</bpmn:incoming>]'
  , q'[        </bpmn:endEvent>]'
  , q'[        <bpmn:sequenceFlow id='Flow_0t7vhh2' sourceRef='Activity_1nqf2t2' targetRef='Event_0ytprrh' />]'
  , q'[        <bpmn:exclusiveGateway id='Gateway_0qtnlf2' name='Anything really bad?' default='Flow_18i162p'>]'
  , q'[          <bpmn:incoming>Flow_0lkjrzz</bpmn:incoming>]'
  , q'[          <bpmn:outgoing>Flow_1x95h95</bpmn:outgoing>]'
  , q'[          <bpmn:outgoing>Flow_18i162p</bpmn:outgoing>]'
  , q'[        </bpmn:exclusiveGateway>]'
  , q'[        <bpmn:sequenceFlow id='Flow_1x95h95' name='N' sourceRef='Gateway_0qtnlf2' targetRef='Activity_1nqf2t2' />]'
  , q'[        <bpmn:task id='Activity_1ummob2' name='B4 Pre-Error Step'>]'
  , q'[          <bpmn:incoming>Flow_18i162p</bpmn:incoming>]'
  , q'[          <bpmn:outgoing>Flow_1e22oat</bpmn:outgoing>]'
  , q'[        </bpmn:task>]'
  , q'[        <bpmn:sequenceFlow id='Flow_18i162p' name='Y' sourceRef='Gateway_0qtnlf2' targetRef='Activity_1ummob2' />]'
  , q'[        <bpmn:sequenceFlow id='Flow_1e22oat' sourceRef='Activity_1ummob2' targetRef='Event_185dh52' />]'
  , q'[        <bpmn:endEvent id='Event_185dh52' name='B4 Error End'>]'
  , q'[          <bpmn:incoming>Flow_1e22oat</bpmn:incoming>]'
  , q'[          <bpmn:errorEventDefinition id='ErrorEventDefinition_1jh4n0h' />]'
  , q'[        </bpmn:endEvent>]'
  , q'[      </bpmn:subProcess>]'
  , q'[      <bpmn:task id='Activity_0ems563' name='B5'>]'
  , q'[        <bpmn:incoming>Flow_0dxi3lp</bpmn:incoming>]'
  , q'[        <bpmn:outgoing>Flow_03kjiig</bpmn:outgoing>]'
  , q'[      </bpmn:task>]'
  , q'[      <bpmn:sequenceFlow id='Flow_0dxi3lp' sourceRef='Activity_1l75ys0' targetRef='Activity_0ems563' />]'
  , q'[      <bpmn:endEvent id='Event_1mr01vo' name='B4 B5 end'>]'
  , q'[        <bpmn:incoming>Flow_03kjiig</bpmn:incoming>]'
  , q'[      </bpmn:endEvent>]'
  , q'[      <bpmn:sequenceFlow id='Flow_03kjiig' sourceRef='Activity_0ems563' targetRef='Event_1mr01vo' />]'
  , q'[      <bpmn:exclusiveGateway id='Gateway_0okheq5' name='Everything OK?' default='Flow_1n7yz35'>]'
  , q'[        <bpmn:incoming>Flow_1smtq7r</bpmn:incoming>]'
  , q'[        <bpmn:outgoing>Flow_00jpo2b</bpmn:outgoing>]'
  , q'[        <bpmn:outgoing>Flow_1n7yz35</bpmn:outgoing>]'
  , q'[      </bpmn:exclusiveGateway>]'
  , q'[      <bpmn:sequenceFlow id='Flow_00jpo2b' name='Yes' sourceRef='Gateway_0okheq5' targetRef='Activity_0ksy34k' />]'
  , q'[      <bpmn:task id='Activity_0ksy34k' name='B6'>]'
  , q'[        <bpmn:incoming>Flow_00jpo2b</bpmn:incoming>]'
  , q'[        <bpmn:incoming>Flow_01yn0la</bpmn:incoming>]'
  , q'[        <bpmn:outgoing>Flow_1o2xxi5</bpmn:outgoing>]'
  , q'[      </bpmn:task>]'
  , q'[      <bpmn:sequenceFlow id='Flow_1o2xxi5' sourceRef='Activity_0ksy34k' targetRef='Event_1v77s5u' />]'
  , q'[      <bpmn:sequenceFlow id='Flow_1n7yz35' sourceRef='Gateway_0okheq5' targetRef='Event_1yflz91' />]'
  , q'[      <bpmn:sequenceFlow id='Flow_01yn0la' sourceRef='Event_1yflz91' targetRef='Activity_0ksy34k' />]'
  , q'[      <bpmn:intermediateThrowEvent id='Event_1yflz91' name='Throw Escalation Event'>]'
  , q'[        <bpmn:incoming>Flow_1n7yz35</bpmn:incoming>]'
  , q'[        <bpmn:outgoing>Flow_01yn0la</bpmn:outgoing>]'
  , q'[        <bpmn:escalationEventDefinition id='EscalationEventDefinition_1todiyv' />]'
  , q'[      </bpmn:intermediateThrowEvent>]'
  , q'[      <bpmn:boundaryEvent id='Event_0ilybau' name='Interrupting Error Boundary Event' attachedToRef='Activity_1l75ys0'>]'
  , q'[        <bpmn:outgoing>Flow_0rzsiz6</bpmn:outgoing>]'
  , q'[        <bpmn:errorEventDefinition id='ErrorEventDefinition_13fuvpw' />]'
  , q'[      </bpmn:boundaryEvent>]'
  , q'[      <bpmn:task id='Activity_0czq539' name='Process Error Handler'>]'
  , q'[        <bpmn:incoming>Flow_0rzsiz6</bpmn:incoming>]'
  , q'[        <bpmn:outgoing>Flow_0pw6aqw</bpmn:outgoing>]'
  , q'[      </bpmn:task>]'
  , q'[      <bpmn:sequenceFlow id='Flow_0rzsiz6' sourceRef='Event_0ilybau' targetRef='Activity_0czq539' />]'
  , q'[      <bpmn:endEvent id='Event_0jj0hcj' name='B4 Bad End'>]'
  , q'[        <bpmn:incoming>Flow_0pw6aqw</bpmn:incoming>]'
  , q'[      </bpmn:endEvent>]'
  , q'[      <bpmn:sequenceFlow id='Flow_0pw6aqw' sourceRef='Activity_0czq539' targetRef='Event_0jj0hcj' />]'
  , q'[      <bpmn:textAnnotation id='TextAnnotation_0mjqcjn'>]'
  , q'[        <bpmn:text>All of the active subflows have to complete for the sub process to complete, and then return to the parent subflow.</bpmn:text>]'
  , q'[      </bpmn:textAnnotation>]'
  , q'[      <bpmn:association id='Association_0n233kd' sourceRef='Event_1v77s5u' targetRef='TextAnnotation_0mjqcjn' />]'
  , q'[    </bpmn:subProcess>]'
  , q'[    <bpmn:task id='Activity_0n0h791' name='C'>]'
  , q'[      <bpmn:incoming>Flow_1trgt3r</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_0wppxk7</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_1trgt3r' sourceRef='Activity_1lt3f7j' targetRef='Activity_0n0h791' />]'
  , q'[    <bpmn:endEvent id='Event_1h0lzcv' name='End'>]'
  , q'[      <bpmn:incoming>Flow_0wppxk7</bpmn:incoming>]'
  , q'[    </bpmn:endEvent>]'
  , q'[    <bpmn:sequenceFlow id='Flow_0wppxk7' sourceRef='Activity_0n0h791' targetRef='Event_1h0lzcv' />]'
  , q'[    <bpmn:boundaryEvent id='Event_05m9taf' name='Non-Interrupting Escalation Catch Event' cancelActivity='false' attachedToRef='Activity_1lt3f7j'>]'
  , q'[      <bpmn:outgoing>Flow_0oc2x09</bpmn:outgoing>]'
  , q'[      <bpmn:escalationEventDefinition id='EscalationEventDefinition_157jo9p' />]'
  , q'[    </bpmn:boundaryEvent>]'
  , q'[    <bpmn:sequenceFlow id='Flow_0oc2x09' sourceRef='Event_05m9taf' targetRef='Activity_1mbzten' />]'
  , q'[    <bpmn:serviceTask id='Activity_1b9ghnl' name='Email Manager for Help'>]'
  , q'[      <bpmn:incoming>Flow_1wddzwq</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_0jim7nk</bpmn:outgoing>]'
  , q'[      <apex:plsqlCode>null;</apex:plsqlCode>]'
  , q'[    </bpmn:serviceTask>]'
  , q'[    <bpmn:endEvent id='Event_099tlz0' name='Escalation Handler End'>]'
  , q'[      <bpmn:incoming>Flow_0jim7nk</bpmn:incoming>]'
  , q'[    </bpmn:endEvent>]'
  , q'[    <bpmn:sequenceFlow id='Flow_0jim7nk' sourceRef='Activity_1b9ghnl' targetRef='Event_099tlz0' />]'
  , q'[    <bpmn:task id='Activity_1mbzten' name='This gets started in Parallel when escalated...'>]'
  , q'[      <bpmn:incoming>Flow_0oc2x09</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_1wddzwq</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_1wddzwq' sourceRef='Activity_1mbzten' targetRef='Activity_1b9ghnl' />]'
  , q'[    <bpmn:textAnnotation id='TextAnnotation_0m1p9cx'>]'
  , q'[      <bpmn:text>Tutorial 6 - Introducing Escalations and Error Events]'
  , q'[]'
  , q'[Let's build on our Sub Process Model.]'
  , q'[]'
  , q'[Escalations are used when a process has a warning, or something happens when you need to bring in an extra process to help.Â ]'
  , q'[]'
  , q'[We use an Escalation Intermediate Throw Event between B3 and B6 to signal that we have an escalation.Â  Â The escalation is caught by the Non-Interrupting Escalation Boundary Event on the sub process boundary, where our escalation handling process is defined.Â  Â This is non -interrupting -- so the main process continues.Â ]'
  , q'[]'
  , q'[Escalations can be non-interrupting (usual) or can interrupt the process.]'
  , q'[]'
  , q'[Sub process B4 has an Error End Event - so in this tutorial it always ends with an error - which interrupts the sub-process, and passes control to the error handler if you have one defined.]'
  , q'[]'
  , q'[]'
  , q'[]'
  , q'[]'
  , q'[Note that we're talking about business process Escalations (and Errors) here - not technical escalations (or errors!).</bpmn:text>]'
  , q'[    </bpmn:textAnnotation>]'
  , q'[    <bpmn:association id='Association_0ccwauj' sourceRef='Activity_1lt3f7j' targetRef='TextAnnotation_0m1p9cx' />]'
  , q'[  </bpmn:process>]'
  , q'[  <bpmndi:BPMNDiagram id='BPMNDiagram_1'>]'
  , q'[    <bpmndi:BPMNPlane id='BPMNPlane_1' bpmnElement='Tutorial_AA6'>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1wddzwq_di' bpmnElement='Flow_1wddzwq'>]'
  , q'[        <di:waypoint x='1430' y='890' />]'
  , q'[        <di:waypoint x='1460' y='890' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0jim7nk_di' bpmnElement='Flow_0jim7nk'>]'
  , q'[        <di:waypoint x='1560' y='890' />]'
  , q'[        <di:waypoint x='1612' y='890' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0oc2x09_di' bpmnElement='Flow_0oc2x09'>]'
  , q'[        <di:waypoint x='1290' y='828' />]'
  , q'[        <di:waypoint x='1290' y='890' />]'
  , q'[        <di:waypoint x='1330' y='890' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0wppxk7_di' bpmnElement='Flow_0wppxk7'>]'
  , q'[        <di:waypoint x='1900' y='480' />]'
  , q'[        <di:waypoint x='1962' y='480' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1trgt3r_di' bpmnElement='Flow_1trgt3r'>]'
  , q'[        <di:waypoint x='1700' y='480' />]'
  , q'[        <di:waypoint x='1800' y='480' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1ha31js_di' bpmnElement='Flow_1ha31js'>]'
  , q'[        <di:waypoint x='430' y='310' />]'
  , q'[        <di:waypoint x='530' y='310' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1gz0sgq_di' bpmnElement='Flow_1gz0sgq'>]'
  , q'[        <di:waypoint x='278' y='310' />]'
  , q'[        <di:waypoint x='330' y='310' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNShape id='Event_0iygv59_di' bpmnElement='Event_0iygv59'>]'
  , q'[        <dc:Bounds x='242' y='292' width='36' height='36' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_13yt1ft_di' bpmnElement='Activity_13yt1ft'>]'
  , q'[        <dc:Bounds x='330' y='270' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_0x9pws1_di' bpmnElement='Activity_1lt3f7j' isExpanded='true'>]'
  , q'[        <dc:Bounds x='530' y='210' width='1170' height='600' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0pw6aqw_di' bpmnElement='Flow_0pw6aqw'>]'
  , q'[        <di:waypoint x='1580' y='710' />]'
  , q'[        <di:waypoint x='1612' y='710' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0rzsiz6_di' bpmnElement='Flow_0rzsiz6'>]'
  , q'[        <di:waypoint x='1428' y='710' />]'
  , q'[        <di:waypoint x='1480' y='710' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_01yn0la_di' bpmnElement='Flow_01yn0la'>]'
  , q'[        <di:waypoint x='1318' y='440' />]'
  , q'[        <di:waypoint x='1349' y='440' />]'
  , q'[        <di:waypoint x='1349' y='350' />]'
  , q'[        <di:waypoint x='1380' y='350' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1n7yz35_di' bpmnElement='Flow_1n7yz35'>]'
  , q'[        <di:waypoint x='1240' y='355' />]'
  , q'[        <di:waypoint x='1240' y='440' />]'
  , q'[        <di:waypoint x='1282' y='440' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1o2xxi5_di' bpmnElement='Flow_1o2xxi5'>]'
  , q'[        <di:waypoint x='1480' y='330' />]'
  , q'[        <di:waypoint x='1602' y='330' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_00jpo2b_di' bpmnElement='Flow_00jpo2b'>]'
  , q'[        <di:waypoint x='1265' y='330' />]'
  , q'[        <di:waypoint x='1380' y='330' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1280' y='312' width='18' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_03kjiig_di' bpmnElement='Flow_03kjiig'>]'
  , q'[        <di:waypoint x='1550' y='550' />]'
  , q'[        <di:waypoint x='1602' y='550' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0dxi3lp_di' bpmnElement='Flow_0dxi3lp'>]'
  , q'[        <di:waypoint x='1410' y='550' />]'
  , q'[        <di:waypoint x='1450' y='550' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0sw8mct_di' bpmnElement='Flow_0sw8mct'>]'
  , q'[        <di:waypoint x='830' y='355' />]'
  , q'[        <di:waypoint x='830' y='510' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1smtq7r_di' bpmnElement='Flow_1smtq7r'>]'
  , q'[        <di:waypoint x='1170' y='330' />]'
  , q'[        <di:waypoint x='1215' y='330' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0l8zsga_di' bpmnElement='Flow_0l8zsga'>]'
  , q'[        <di:waypoint x='1010' y='330' />]'
  , q'[        <di:waypoint x='1070' y='330' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_14jrwrx_di' bpmnElement='Flow_14jrwrx'>]'
  , q'[        <di:waypoint x='855' y='330' />]'
  , q'[        <di:waypoint x='910' y='330' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1dfsgk8_di' bpmnElement='Flow_1dfsgk8'>]'
  , q'[        <di:waypoint x='750' y='330' />]'
  , q'[        <di:waypoint x='805' y='330' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1bfswcs_di' bpmnElement='Flow_1bfswcs'>]'
  , q'[        <di:waypoint x='598' y='330' />]'
  , q'[        <di:waypoint x='650' y='330' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNShape id='Event_0j57auc_di' bpmnElement='Event_0j57auc'>]'
  , q'[        <dc:Bounds x='561.6666666666666' y='312' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='537' y='355' width='87' height='40' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_0kcgja9_di' bpmnElement='Activity_0kcgja9'>]'
  , q'[        <dc:Bounds x='650' y='290' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Gateway_0iissxc_di' bpmnElement='Gateway_0tapl6i'>]'
  , q'[        <dc:Bounds x='805' y='305' width='50' height='50' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='784' y='293' width='32' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_1n7m2kj_di' bpmnElement='Activity_1n7m2kj'>]'
  , q'[        <dc:Bounds x='910' y='290' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_1ox4cmk_di' bpmnElement='Activity_1ox4cmk'>]'
  , q'[        <dc:Bounds x='1070' y='290' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Event_1v77s5u_di' bpmnElement='Event_1v77s5u'>]'
  , q'[        <dc:Bounds x='1602' y='312' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1586' y='355' width='70' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_19cs6tz_di' bpmnElement='Activity_1l75ys0' isExpanded='true'>]'
  , q'[        <dc:Bounds x='770' y='510' width='640' height='250' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1e22oat_di' bpmnElement='Flow_1e22oat'>]'
  , q'[        <di:waypoint x='1220' y='700' />]'
  , q'[        <di:waypoint x='1272' y='700' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_18i162p_di' bpmnElement='Flow_18i162p'>]'
  , q'[        <di:waypoint x='1080' y='615' />]'
  , q'[        <di:waypoint x='1080' y='700' />]'
  , q'[        <di:waypoint x='1120' y='700' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1091' y='655' width='8' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1x95h95_di' bpmnElement='Flow_1x95h95'>]'
  , q'[        <di:waypoint x='1105' y='590' />]'
  , q'[        <di:waypoint x='1170' y='590' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1134' y='572' width='8' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0t7vhh2_di' bpmnElement='Flow_0t7vhh2'>]'
  , q'[        <di:waypoint x='1270' y='590' />]'
  , q'[        <di:waypoint x='1342' y='590' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0lkjrzz_di' bpmnElement='Flow_0lkjrzz'>]'
  , q'[        <di:waypoint x='1000' y='590' />]'
  , q'[        <di:waypoint x='1055' y='590' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1ji74dg_di' bpmnElement='Flow_1ji74dg'>]'
  , q'[        <di:waypoint x='838' y='590' />]'
  , q'[        <di:waypoint x='900' y='590' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNShape id='Event_094xygx_di' bpmnElement='Event_094xygx'>]'
  , q'[        <dc:Bounds x='802' y='572' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='800' y='615' width='40' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_1rct9yd_di' bpmnElement='Activity_1rct9yd'>]'
  , q'[        <dc:Bounds x='900' y='550' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_1nqf2t2_di' bpmnElement='Activity_1nqf2t2'>]'
  , q'[        <dc:Bounds x='1170' y='550' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Event_0ytprrh_di' bpmnElement='Event_0ytprrh'>]'
  , q'[        <dc:Bounds x='1342' y='572' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1343' y='615' width='35' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Gateway_0qtnlf2_di' bpmnElement='Gateway_0qtnlf2' isMarkerVisible='true'>]'
  , q'[        <dc:Bounds x='1055' y='565' width='50' height='50' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1078' y='546' width='73' height='27' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_1ummob2_di' bpmnElement='Activity_1ummob2'>]'
  , q'[        <dc:Bounds x='1120' y='660' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Event_0ppaw77_di' bpmnElement='Event_185dh52'>]'
  , q'[        <dc:Bounds x='1272' y='682' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1258' y='725' width='64' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_0ems563_di' bpmnElement='Activity_0ems563'>]'
  , q'[        <dc:Bounds x='1450' y='510' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Event_1mr01vo_di' bpmnElement='Event_1mr01vo'>]'
  , q'[        <dc:Bounds x='1602' y='532' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1594' y='575' width='52' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Gateway_0okheq5_di' bpmnElement='Gateway_0okheq5' isMarkerVisible='true'>]'
  , q'[        <dc:Bounds x='1215' y='305' width='50' height='50' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1201' y='283' width='78' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_0ksy34k_di' bpmnElement='Activity_0ksy34k'>]'
  , q'[        <dc:Bounds x='1380' y='290' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Event_0inroqp_di' bpmnElement='Event_1yflz91'>]'
  , q'[        <dc:Bounds x='1282' y='422' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1258' y='465' width='85' height='27' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_0czq539_di' bpmnElement='Activity_0czq539'>]'
  , q'[        <dc:Bounds x='1480' y='670' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Event_0jj0hcj_di' bpmnElement='Event_0jj0hcj'>]'
  , q'[        <dc:Bounds x='1612' y='692' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1601' y='735' width='59' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='TextAnnotation_0mjqcjn_di' bpmnElement='TextAnnotation_0mjqcjn'>]'
  , q'[        <dc:Bounds x='1390' y='230' width='248' height='54' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Event_0nr80d2_di' bpmnElement='Event_0ilybau'>]'
  , q'[        <dc:Bounds x='1392' y='692' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1418' y='636' width='84' height='27' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNEdge id='Association_0n233kd_di' bpmnElement='Association_0n233kd'>]'
  , q'[        <di:waypoint x='1617' y='313' />]'
  , q'[        <di:waypoint x='1611' y='284' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNShape id='Activity_0n0h791_di' bpmnElement='Activity_0n0h791'>]'
  , q'[        <dc:Bounds x='1800' y='440' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Event_1h0lzcv_di' bpmnElement='Event_1h0lzcv'>]'
  , q'[        <dc:Bounds x='1962' y='462' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1970' y='505' width='20' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_13xmf2s_di' bpmnElement='Activity_1b9ghnl'>]'
  , q'[        <dc:Bounds x='1460' y='850' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Event_099tlz0_di' bpmnElement='Event_099tlz0'>]'
  , q'[        <dc:Bounds x='1612' y='872' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1599' y='915' width='62' height='27' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_1mbzten_di' bpmnElement='Activity_1mbzten'>]'
  , q'[        <dc:Bounds x='1330' y='850' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='TextAnnotation_0m1p9cx_di' bpmnElement='TextAnnotation_0m1p9cx'>]'
  , q'[        <dc:Bounds x='580' y='-180' width='930' height='264' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Event_170xafm_di' bpmnElement='Event_05m9taf'>]'
  , q'[        <dc:Bounds x='1272' y='792' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1178' y='835' width='83' height='40' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNEdge id='Association_0ccwauj_di' bpmnElement='Association_0ccwauj'>]'
  , q'[        <di:waypoint x='922' y='210' />]'
  , q'[        <di:waypoint x='822' y='84' />]'
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
 
PROMPT >> Example "AA6 - Errors and Escalations" loaded.
PROMPT >> ========================================================
