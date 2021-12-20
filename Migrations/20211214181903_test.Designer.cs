﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using RecodeAir.Models;

namespace RecodeAir.Migrations
{
    [DbContext(typeof(Context))]
    [Migration("20211214181903_test")]
    partial class test
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("ProductVersion", "5.0.13")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("RecodeAir.Models.Cliente", b =>
                {
                    b.Property<int>("IdCliente")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Cpf")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Email")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Nome")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Telefone")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("IdCliente");

                    b.ToTable("Clientes");
                });

            modelBuilder.Entity("RecodeAir.Models.Destino", b =>
                {
                    b.Property<int>("IdDestino")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Descricao")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("NomeDestino")
                        .HasColumnType("nvarchar(max)");

                    b.Property<decimal>("Preco")
                        .HasColumnType("decimal(18,2)");

                    b.HasKey("IdDestino");

                    b.ToTable("Destinos");
                });

            modelBuilder.Entity("RecodeAir.Models.Pedido", b =>
                {
                    b.Property<int>("IdPedido")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("Cliente")
                        .HasColumnType("int");

                    b.Property<int?>("ClienteIdCliente")
                        .HasColumnType("int");

                    b.Property<DateTime>("DataViagem")
                        .HasColumnType("datetime2");

                    b.Property<int>("Destino")
                        .HasColumnType("int");

                    b.Property<int?>("DestinoIdDestino")
                        .HasColumnType("int");

                    b.Property<int>("IdCliente")
                        .HasColumnType("int");

                    b.Property<int>("IdDestino")
                        .HasColumnType("int");

                    b.HasKey("IdPedido");

                    b.HasIndex("ClienteIdCliente");

                    b.HasIndex("DestinoIdDestino");

                    b.ToTable("Pedidos");
                });

            modelBuilder.Entity("RecodeAir.Models.Pedido", b =>
                {
                    b.HasOne("RecodeAir.Models.Cliente", null)
                        .WithMany("Pedidos")
                        .HasForeignKey("ClienteIdCliente");

                    b.HasOne("RecodeAir.Models.Destino", null)
                        .WithMany("Pedidos")
                        .HasForeignKey("DestinoIdDestino");
                });

            modelBuilder.Entity("RecodeAir.Models.Cliente", b =>
                {
                    b.Navigation("Pedidos");
                });

            modelBuilder.Entity("RecodeAir.Models.Destino", b =>
                {
                    b.Navigation("Pedidos");
                });
#pragma warning restore 612, 618
        }
    }
}
