import Component from "@glimmer/component";
import { action } from "@ember/object";
import DButton from "discourse/components/d-button";

export default class BackButtonComponent extends Component {
  @action
  goBack() {
    window.history.back();
  }

  <template>
    <div class="back-button-container">
      <DButton
        class="icon btn-flat plugin-outlets-header-icon"
        @icon="arrow-left"
        @title="this thing"
        @action={{this.goBack}}
      />
    </div>
  </template>
}
