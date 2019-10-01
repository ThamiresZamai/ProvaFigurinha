<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadFigurinha.aspx.cs" Inherits="ProvaCadastroFigurinha.CadFigurinha" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="divCadastroInst" class="auto-style1">
           <label style="font-style: italic">Cadastro de Figurinhas</label>
            <br />
            <label>Descrição: </label>
            <asp:TextBox runat="server"  ID="txtDescricao" CssClass="auto-style3" Width="126px"/> 
             <br />
            <label>Ano: </label>
            <asp:TextBox runat="server"  ID="txtAno" CssClass="auto-style2" Width="127px"/>
             <br />
            <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btn_salvar"/>
             <br />
        </div>
        <div>
            <asp:GridView ID="GridFigurinha" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
