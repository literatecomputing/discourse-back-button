import Component from "@glimmer/component";
import { action } from "@ember/object";
import DButton from "discourse/components/d-button";

export default class BackButtonComponent extends Component {
  @action
  goBack() {
    window.history.back();
  }
}
