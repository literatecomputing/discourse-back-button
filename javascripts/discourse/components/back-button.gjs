import Component from "@glimmer/component";
import { action } from "@ember/object";
import DButton from "discourse/components/d-button";
import { defaultHomepage } from "discourse/lib/utilities";
import { service } from "@ember/service";

export default class BackButtonComponent extends Component {
  @service router;

  get isHomepage() {
    const { currentRouteName } = this.router;
    return currentRouteName === `discovery.${defaultHomepage()}`;
  }

  get displayBackButton() {
    const { currentRouteName } = this.router;
    const isHomepage = currentRouteName === `discovery.${defaultHomepage()}`;
    return !isHomepage && settings.hide_back_button_on_home_page;
  }

  @action
  goBack() {
    window.history.back();
  }

  <template>
    {{#if this.displayBackButton}}
      <div class="back-button-container fixed-top-header fixed-header">
        <DButton
          class="icon btn-flat plugin-outlets-header-icon"
          @icon="arrow-left"
          @title="this thing"
          @action={{this.goBack}}
        />
      </div>
    {{/if}}
  </template>
}
