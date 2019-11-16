<section class="inner-page">
    <img class="quote_img" src="<?= base_url('assets/front_assets/images/wrapper_img2.jpg') ?>">
    <div class="wrapper">

        <div class="container">
            <div class="row">
                <div class="page-wrapper col-md-10">
                    <h5>In this Section, select all decks you are willing to provide testing for. You can select multiple platforms simultaneously.  With free platforms or the use of a rental service, you can select all archetypes.</h5>

                    <div class="filter form-row">
                        <div class="form-group">
                            <select class="form-control" id="platform_select">
                                <option>Plartform</option>
                                <option>Plartform2</option>
                            </select>
                        </div>
                        <div class="form-group" >
                            <select class="form-control" id="format_select">
                                <option>Format</option>
                                <option>Format2</option>
                            </select>
                        </div>
                    </div>

                    <div class="checkbox-section col-md-10">
                        <p><strong>Don’t see your deck listed?</strong> Use the Deck Editor to submit it to our moderators for addition.</p>

                        <div class="checkbox-content">

                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                                <label class="form-check-label" for="defaultCheck1">
                                    Default checkbox
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck2">
                                <label class="form-check-label" for="defaultCheck2">
                                    Default checkbox
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck3">
                                <label class="form-check-label" for="defaultCheck3">
                                    Default checkbox
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck4">
                                <label class="form-check-label" for="defaultCheck4">
                                    Default checkbox
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck5">
                                <label class="form-check-label" for="defaultCheck5">
                                    Default checkbox
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck6">
                                <label class="form-check-label" for="defaultCheck6">
                                    Default checkbox
                                </label>
                            </div>

                        </div>

                    </div>
                </div>

                <div class="ad-section col-md-2">
                    <img src="<?= base_url('assets/front_assets/images/ad-this.png'); ?>">
                </div>
            </div>
        </div>
    </div>
            
</section>

<script>
    // show platform select
    $(function(){
        var data = '';
        $.ajax({
            url: '<?= base_url('MyDesk'); ?>',
        })
    })
</script>