import Component from "@glimmer/component";
import { action } from "@ember/object";
import { service } from "@ember/service";
import { defaultHomepage } from "discourse/lib/utilities";
import DButton from "discourse/ui-kit/d-button";

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
          @action={{this.goBack}}
          @icon="arrow-left"
          @title="this thing"
        />
      </div>
    {{/if}}
  </template>
}
