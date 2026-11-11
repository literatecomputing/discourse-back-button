import { apiInitializer } from "discourse/lib/api";
import BackButton from "../components/back-button.gjs";

export default apiInitializer((api) => {
  api.renderInOutlet("above-site-header", BackButton);
});
