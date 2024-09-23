import { apiInitializer } from "discourse/lib/api";
import BackButton from "../components/back-button";


export default apiInitializer("1.8.0", ( api ) => {
  // console.log("hello world from api initializer!");
    api.renderInOutlet("above-site-header", BackButton);
});
