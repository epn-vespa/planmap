<resource schema="planmap">
  <meta name="title">PLANMAP</meta>
  <meta name="description">
    EPN-TAP access to the the PLANMAP data archive.
  </meta>
  <meta name="creationDate">2021-02-20T01:01:01</meta>
  <meta name="subject">Geology</meta>
  <meta name="creator.name">Carlos Brandt</meta>
  <meta name="subjects">geology, maps, planet</meta>
  <meta name="instrument">custom</meta>
  <meta name="facility">custom</meta>
  <meta name="contentLevel"></meta>
  <meta name="type">Catalog</meta>
  <meta name="coverage">
    <meta name="Profile">Solar System</meta>
  </meta>


  <table id="epn_core" onDisk="true">
    <mixin spatial_frame_type="body">
      //epntap2#table-2_0
    </mixin>

    <meta name="description">
      Catalog of PLANMAP maps
    </meta>

    <stc>
      Polygon UNKNOWNFrame [s_region]
    </stc>

    <!-- <column
      name="spatial_frame_type"
      type="text"
      verbLevel="1"
    /> -->
    <column
      name="granule_uid"
      type="text"
      verbLevel="1"
    />
    <column
      name="granule_gid"
      type="text"
      verbLevel="1"
    />
    <column
      name="obs_id"
      type="text"
      verbLevel="1"
    />
    <column
      name="dataproduct_type"
      type="text"
      verbLevel="1"
    />
    <column
      name="target_name"
      type="text"
      verbLevel="1"
    />
    <column
      name="target_class"
      type="text"
      verbLevel="1"
    />
    <column
      name="creation_date"
      type="text"
      verbLevel="1"
    />
    <column
      name="modification_date"
      type="text"
      verbLevel="1"
    />
    <column
      name="release_date"
      type="text"
      verbLevel="1"
    />
    <column
      name="service_title"
      type="text"
      verbLevel="1"
    />
    <column
      name="c1min"
      type="text"
      verbLevel="1"
    />
    <column
      name="c1max"
      type="text"
      verbLevel="1"
    />
    <column
      name="c2min"
      type="text"
      verbLevel="1"
    />
    <column
      name="c2max"
      type="text"
      verbLevel="1"
    />
    <column
      name="s_region"
      type="text"
      verbLevel="1"
    />
    <column
      name="access_url"
      type="text"
      ucd="meta.ref.url"
      verbLevel="1"
      description="URL image"
    />
    <column
      name="thumbnail_url"
      type="text"
      ucd="meta.ref.url;meta.preview"
      verbLevel="1"
      description="URL of a thumbnail image with predefined size (png ~200 pix, for use in a client only)"
    />
    <column
      name="processing_level"
      type="integer"
      verbLevel="1"
    />
    <publish sets="ivo_managed,local"/>
  </table>

  <data id="import">
    <sources>data/data.csv</sources>

    <csvGrammar>
      <rowfilter procDef="//products#define">
        <bind name="table">"schema.epn_core"</bind>
      </rowfilter>
    </csvGrammar>
    <make table="epn_core">
      <rowmaker idmaps="*">
        <var key="service_title">"planmap"</var>
        <var key="granule_uid" source="granule_uid"/>
        <var key="granule_gid" source="granule_gid"/>
        <var key="obs_id" source="obs_id"/>
        <var key="dataproduct_type" source="dataproduct_type"/>
        <var key="target_name" source="target_name"/>
        <var key="target_class" source="target_class"/>
        <var key="c1min" source="c1min"/>
        <var key="c1max" source="c1max"/>
        <var key="c2min" source="c2min"/>
        <var key="c2max" source="c2max"/>
        <var key="s_region" source="s_region"/>
        <var key="spatial_frame_type" source="spatial_frame_type"/>
        <var key="instrument_host_name">"custom"</var>
        <var key="instrument_name">"custom"</var>
        <var key="creation_date">"2020-1-1"</var>
        <var key="modification_date">"2020-1-30"</var>
        <var key="release_date">"2020-1-1"</var>
        <var key="processing_level">"1"</var>

        <apply procDef="//epntap2#populate-2_0" name="fillepn">
          <bind name="service_title">@service_title</bind>
          <bind name="granule_uid">@granule_uid</bind>
          <bind name="granule_gid">@granule_gid</bind>
          <bind name="obs_id">@obs_id</bind>
          <bind name="dataproduct_type">@dataproduct_type</bind>
          <bind name="target_name">@target_name</bind>
          <bind name="target_class">@target_class</bind>
          <bind name="c1min">@c1min</bind>
          <bind name="c1max">@c1max</bind>
          <bind name="c2min">@c2min</bind>
          <bind name="c2max">@c2max</bind>
          <bind name="s_region">@s_region</bind>
          <bind name="instrument_host_name">@instrument_host_name</bind>
          <bind name="instrument_name">@instrument_name</bind>
          <bind name="creation_date">@creation_date</bind>
          <bind name="modification_date">@modification_date</bind>
          <bind name="release_date">@release_date</bind>
          <bind name="processing_level">@processing_level</bind>
        </apply>
      </rowmaker>
    </make>
  </data>
</resource>
