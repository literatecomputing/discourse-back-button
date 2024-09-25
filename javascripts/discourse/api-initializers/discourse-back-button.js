import { apiInitializer } from "discourse/lib/api";
import BackButton from "../components/back-button";

export default apiInitializer("1.8.0", (api) => {
  api.renderInOutlet("above-site-header", BackButton);
});
