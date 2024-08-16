# Superstore-Sales-Analysis-
This is an analysis based on insights generated by using SQL on the famous Superstore dataset.

![Healthcare](https://github.com/ANURUDRA-JENA/Health-Care-Analysis-Dashboard/blob/6e6ab3a7c5173ec5a58b24d2dc42c713e2ff1dbc/Assets/Cover%20pic.png)

<h2>A Brief overview of the Analysis:</h2>
<h3 style="text-align: left; color: rgb(210, 208, 206); background-color: rgb(43, 43, 43); font-size: var(--cib-type-subtitle1-stronger-font-size); --darkreader-inline-color: #cac6bf; --darkreader-inline-bgcolor: #202324;" data-darkreader-inline-color="" data-darkreader-inline-bgcolor=""><strong>Business Objective</strong></h3>
<p style="text-align: left; color: rgb(210, 208, 206); background-color: rgb(43, 43, 43); font-size: 14px; --darkreader-inline-color: #cac6bf; --darkreader-inline-bgcolor: #202324;" data-darkreader-inline-color="" data-darkreader-inline-bgcolor="">The primary goal is to identify the optimal product, regional, and customer segments for Superstore to maximize profitability.</p>
<h3 style="text-align: left; color: rgb(210, 208, 206); background-color: rgb(43, 43, 43); font-size: var(--cib-type-subtitle1-stronger-font-size); --darkreader-inline-color: #cac6bf; --darkreader-inline-bgcolor: #202324;" data-darkreader-inline-color="" data-darkreader-inline-bgcolor=""><strong>Data Assessment</strong></h3>
<p style="text-align: left; color: rgb(210, 208, 206); background-color: rgb(43, 43, 43); font-size: 14px; --darkreader-inline-color: #cac6bf; --darkreader-inline-bgcolor: #202324;" data-darkreader-inline-color="" data-darkreader-inline-bgcolor="">The analysis is based on a dataset spanning from 2014 to 2017, which includes:</p>
<ul style="text-align: left; color: rgb(210, 208, 206); background-color: rgb(43, 43, 43); font-size: 14px; --darkreader-inline-color: #cac6bf; --darkreader-inline-bgcolor: #202324;" data-darkreader-inline-color="" data-darkreader-inline-bgcolor="">
    <li><strong>793 customers</strong></li>
    <li><strong>9994 data points</strong></li>
</ul>
<h3 style="text-align: left; color: rgb(210, 208, 206); background-color: rgb(43, 43, 43); font-size: var(--cib-type-subtitle1-stronger-font-size); --darkreader-inline-color: #cac6bf; --darkreader-inline-bgcolor: #202324;" data-darkreader-inline-color="" data-darkreader-inline-bgcolor=""><strong>Data Processing</strong></h3>
<p style="text-align: left; color: rgb(210, 208, 206); background-color: rgb(43, 43, 43); font-size: 14px; --darkreader-inline-color: #cac6bf; --darkreader-inline-bgcolor: #202324;" data-darkreader-inline-color="" data-darkreader-inline-bgcolor="">To ensure data integrity, the following steps were taken:</p>
<ul style="text-align: left; color: rgb(210, 208, 206); background-color: rgb(43, 43, 43); font-size: 14px; --darkreader-inline-color: #cac6bf; --darkreader-inline-bgcolor: #202324;" data-darkreader-inline-color="" data-darkreader-inline-bgcolor="">
    <li><strong>Missing Values</strong>: Checked and handled appropriately.</li>
    <li><strong>Duplicates</strong>: Identified and removed.</li>
    <li><strong>Formatting Issues</strong>: Standardized data formats for consistency.</li>
</ul>
<h3 style="text-align: left; color: rgb(210, 208, 206); background-color: rgb(43, 43, 43); font-size: var(--cib-type-subtitle1-stronger-font-size); --darkreader-inline-color: #cac6bf; --darkreader-inline-bgcolor: #202324;" data-darkreader-inline-color="" data-darkreader-inline-bgcolor=""><strong>Analysis Insights</strong></h3>
<h4 style="text-align: left; color: rgb(210, 208, 206); background-color: rgb(43, 43, 43); font-size: var(--cib-type-subtitle2-stronger-font-size); --darkreader-inline-color: #cac6bf; --darkreader-inline-bgcolor: #202324;" data-darkreader-inline-color="" data-darkreader-inline-bgcolor=""><strong>Sales and Profits</strong></h4>
<ul style="text-align: left; color: rgb(210, 208, 206); background-color: rgb(43, 43, 43); font-size: 14px; --darkreader-inline-color: #cac6bf; --darkreader-inline-bgcolor: #202324;" data-darkreader-inline-color="" data-darkreader-inline-bgcolor="">
    <li><strong>Trend</strong>: There has been a steady increase in profits over the years.</li>
    <li><strong>Seasonality</strong>: Q4 is identified as the most profitable quarter.</li>
</ul>
<h4 style="text-align: left; color: rgb(210, 208, 206); background-color: rgb(43, 43, 43); font-size: var(--cib-type-subtitle2-stronger-font-size); --darkreader-inline-color: #cac6bf; --darkreader-inline-bgcolor: #202324;" data-darkreader-inline-color="" data-darkreader-inline-bgcolor=""><strong>Regional Performance</strong></h4>
<ul style="text-align: left; color: rgb(210, 208, 206); background-color: rgb(43, 43, 43); font-size: 14px; --darkreader-inline-color: #cac6bf; --darkreader-inline-bgcolor: #202324;" data-darkreader-inline-color="" data-darkreader-inline-bgcolor="">
    <li><strong>Top Regions</strong>: The West and East regions are the most profitable, indicating strong market presence and customer base in these areas.</li>
</ul>
<h4 style="text-align: left; color: rgb(210, 208, 206); background-color: rgb(43, 43, 43); font-size: var(--cib-type-subtitle2-stronger-font-size); --darkreader-inline-color: #cac6bf; --darkreader-inline-bgcolor: #202324;" data-darkreader-inline-color="" data-darkreader-inline-bgcolor=""><strong>Product Performance</strong></h4>
<ul style="text-align: left; color: rgb(210, 208, 206); background-color: rgb(43, 43, 43); font-size: 14px; --darkreader-inline-color: #cac6bf; --darkreader-inline-bgcolor: #202324;" data-darkreader-inline-color="" data-darkreader-inline-bgcolor="">
    <li><strong>Top Categories</strong>:<ul>
            <li><strong>Technology</strong>: High demand and profitability.</li>
            <li><strong>Office Supplies</strong>: Consistently strong sales and profit margins.</li>
        </ul>
    </li>
</ul>
<h4 style="text-align: left; color: rgb(210, 208, 206); background-color: rgb(43, 43, 43); font-size: var(--cib-type-subtitle2-stronger-font-size); --darkreader-inline-color: #cac6bf; --darkreader-inline-bgcolor: #202324;" data-darkreader-inline-color="" data-darkreader-inline-bgcolor=""><strong>Customer Segmentation</strong></h4>
<ul style="text-align: left; color: rgb(210, 208, 206); background-color: rgb(43, 43, 43); font-size: 14px; --darkreader-inline-color: #cac6bf; --darkreader-inline-bgcolor: #202324;" data-darkreader-inline-color="" data-darkreader-inline-bgcolor="">
    <li><strong>Most Profitable Segment</strong>: The Consumer segment stands out as the most profitable, suggesting targeted marketing and sales strategies for this group could yield significant returns.</li>
</ul>

<h3>Please make sure to go throught the files in the repo and check out the complete analysis.</h3>
<h3>You can provide feedbacks by DM'ing on any of my social media handles. Thanks in Advance</h3>
