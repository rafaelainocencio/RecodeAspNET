using Microsoft.EntityFrameworkCore.Migrations;

namespace RecodeAir.Migrations
{
    public partial class test : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "Cliente",
                table: "Pedidos",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "ClienteIdCliente",
                table: "Pedidos",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "Destino",
                table: "Pedidos",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "DestinoIdDestino",
                table: "Pedidos",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Pedidos_ClienteIdCliente",
                table: "Pedidos",
                column: "ClienteIdCliente");

            migrationBuilder.CreateIndex(
                name: "IX_Pedidos_DestinoIdDestino",
                table: "Pedidos",
                column: "DestinoIdDestino");

            migrationBuilder.AddForeignKey(
                name: "FK_Pedidos_Clientes_ClienteIdCliente",
                table: "Pedidos",
                column: "ClienteIdCliente",
                principalTable: "Clientes",
                principalColumn: "IdCliente",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Pedidos_Destinos_DestinoIdDestino",
                table: "Pedidos",
                column: "DestinoIdDestino",
                principalTable: "Destinos",
                principalColumn: "IdDestino",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Pedidos_Clientes_ClienteIdCliente",
                table: "Pedidos");

            migrationBuilder.DropForeignKey(
                name: "FK_Pedidos_Destinos_DestinoIdDestino",
                table: "Pedidos");

            migrationBuilder.DropIndex(
                name: "IX_Pedidos_ClienteIdCliente",
                table: "Pedidos");

            migrationBuilder.DropIndex(
                name: "IX_Pedidos_DestinoIdDestino",
                table: "Pedidos");

            migrationBuilder.DropColumn(
                name: "Cliente",
                table: "Pedidos");

            migrationBuilder.DropColumn(
                name: "ClienteIdCliente",
                table: "Pedidos");

            migrationBuilder.DropColumn(
                name: "Destino",
                table: "Pedidos");

            migrationBuilder.DropColumn(
                name: "DestinoIdDestino",
                table: "Pedidos");
        }
    }
}
