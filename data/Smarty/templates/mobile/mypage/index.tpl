<!--{*
/*
 * This file is part of EC-CUBE
 *
 * Copyright(c) 2000-2010 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */
*}-->
<!--{$CustomerName1|h}--> <!--{$CustomerName2|h}-->様<br>
いつもご利用いただきありがとうございます。<br>
<br>
<!--★現在のポイント★-->
<!--{if $smarty.const.USE_POINT !== false}-->
現在の所持ポイントは「<!--{$CustomerPoint|number_format|default:"0"|h}-->」Ptです。<br>
<!--{/if}-->

<hr>
<a href="change.php" accesskey="2"><!--{2|numeric_emoji}-->登録内容変更</a><br>
<a href="refusal.php" accesskey="3"><!--{3|numeric_emoji}-->退会</a><br>
<hr>
■購入履歴一覧<br>
<!--{if $objNavi->all_row > 0}-->
    <!--{$objNavi->all_row}-->件の購入履歴があります。<br>
    <!--{section name=cnt loop=$arrOrder}-->
    <hr>
        ●購入日時<br>
        <!--{$arrOrder[cnt].create_date|sfDispDBDate}--><br>
        ●注文番号<br>
        <!--{$arrOrder[cnt].order_id}--><br>
        <!--{assign var=payment_id value="`$arrOrder[cnt].payment_id`"}-->
        ●お支払い方法<br>
        <!--{$arrPayment[$payment_id]|h}--><br>
        ●合計金額<br>
        <!--{$arrOrder[cnt].payment_total|number_format}-->円<br>
        <a href="./history.php?order_id=<!--{$arrOrder[cnt].order_id}-->">詳細を見る</a><br>
    <!--{/section}-->
    <hr>
<!--{else}-->
    購入履歴はありません。<br>
<!--{/if}-->

<!--{if $objNavi->strnavi != ""}-->
<!--{$objNavi->strnavi}-->
<br>
<!--{/if}-->
