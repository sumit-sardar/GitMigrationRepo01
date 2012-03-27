<%@ page contentType="text/xml"%>
<element_package iid="FCAT_TEST.002" security_classification_id="alg112">
	<item_canvas id="IC">
		<panel left_padding="12" stereotype="stem" id="stem1" width="500" 
		       layout="vertical" spacing="12" x="0" y="79" height="97">
			<text_widget halign="left" width="471" id="widget1000">
				<![CDATA[Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.]]>
			</text_widget>
		</panel>
		<answer_area_panel id="A1" stereotype="answerArea" width="500" 
		                   layout="vertical" spacing="12" x="12" height="456" 
		                   top_padding="12" left_padding="12" y="173">
		<recorder_widget x="1" y="1" ></recorder_widget>
		</answer_area_panel>
	</item_canvas>
	<item_model iid="FCAT_TEST.002" eid="2" marked="0" answered="0" number="0" 
	            type="question" correct="A">
		<toolbar oneeighth_inch_ruler="required" mm_ruler="required" 
		         formula_card="required" FCAT_formula_card="required" TN_formula_card="required" highlighter="required" 
		         eraser="required" cm_ruler="required" 
		         scientific_calculator="required" 
		         standard_calculator="required" protractor="required" 
		         option_eliminator="required" half_inch_ruler="required" 
		         straight_edge="required" />
		<interaction type="choice" max_choices="1">
			<selector identifier="A" obj_id_ref="A" user_action="n" />
			<selector identifier="B" obj_id_ref="B" user_action="n" />
			<selector identifier="C" obj_id_ref="C" user_action="n" />
			<selector identifier="D" obj_id_ref="D" user_action="n" />
		</interaction>
	</item_model>
</element_package>