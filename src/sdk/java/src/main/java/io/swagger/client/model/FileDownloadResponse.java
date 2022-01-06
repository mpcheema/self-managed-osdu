/*
 * self-managed-osdu
 * Rest API Documentation for Self Managed OSDU
 *
 * OpenAPI spec version: 0.11.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */


package io.swagger.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;

/**
 * FileDownloadResponse
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2022-01-06T20:32:07.050Z")
public class FileDownloadResponse {
  @SerializedName("SignedURL")
  private String signedURL = null;

  public FileDownloadResponse signedURL(String signedURL) {
    this.signedURL = signedURL;
    return this;
  }

   /**
   * Get signedURL
   * @return signedURL
  **/
  @ApiModelProperty(value = "")
  public String getSignedURL() {
    return signedURL;
  }

  public void setSignedURL(String signedURL) {
    this.signedURL = signedURL;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FileDownloadResponse fileDownloadResponse = (FileDownloadResponse) o;
    return Objects.equals(this.signedURL, fileDownloadResponse.signedURL);
  }

  @Override
  public int hashCode() {
    return Objects.hash(signedURL);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FileDownloadResponse {\n");
    
    sb.append("    signedURL: ").append(toIndentedString(signedURL)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

