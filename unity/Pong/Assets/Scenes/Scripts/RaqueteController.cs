using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RaqueteController : MonoBehaviour
{
    // Criando o meu Vector 3
    private Vector3 minhaPosicao;
    private float meuY;
    public float velocidade = 5f;
    public float meuLimite = 3.5f;

    // identificando se eu sou o player 1 
    public bool player1;

    // variavel para checar se ele deve ser controlado pela inteligencia artificial
    public bool automatico = false;

    //pegando a posiçao da bola
    public Transform transformBola;

    // Start is called before the first frame update
    void Start()
    {
        //    Pegando a posição inicial da raquete e aplicando à minha posição
        minhaPosicao = transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        // Passando o meuY para o eixoY da minhaPosicao
        minhaPosicao.y = meuY;

        // Modificar a posição da minha raquete
        transform.position = minhaPosicao;

        // velocidade multiplicada pelo deltatime
        float deltaVelocidade = velocidade * Time.deltaTime;

        if (!automatico)
        {

            // Pegando a setinha para cima
            // Se eu apertar a setinha para cima ele vai subir a raquete
            if (player1)
            {
                if (Input.GetKey(KeyCode.W))
                {
                    // Checar se o meuY é menor do que o meu limite
                    //if (meuY < meuLimite)
                    {
                        // Aumentar o valor do meuY apenas se ele for menor que o meu limite
                        meuY += deltaVelocidade;
                    }

                    //Pegando a setinha para baixo e checando se ele ainda pode descer
                }
                if (Input.GetKey(KeyCode.S) /*&& meuY > -meuLimite*/)
                {
                    meuY -= deltaVelocidade;
                }
            }
            else
            {   //meu codigo para colocar ele no automatico
                if (Input.GetKey(KeyCode.Return))
                {
                    automatico = true;
                }

                // subindo
                if (Input.GetKey(KeyCode.UpArrow))
                {
                    //if (meuY < meuLimite)
                    {
                        meuY += deltaVelocidade;
                    }
                }
                if (Input.GetKey(KeyCode.DownArrow) /*&& meuY > -meuLimite*/)
                {
                    meuY -= deltaVelocidade;
                }
            }
        }
        else
        {
            // tirando ele do automatico 
            //checando se a setinha para cima OU setinha pra baixo foi pressionada
            if (Input.GetKey(KeyCode.UpArrow) || Input.GetKey(KeyCode.DownArrow))
            {
                automatico = false;
            }
            //se a raquete esta no automatico
            //meuY = transformBola.position.y;
            // para acessar funcoes matematicas, usamos a classe Mathf
            meuY = Mathf.Lerp(meuY, transformBola.position.y, 0.02f);

            //se meu valor é 0 e o da bola e 10 a diferenca entre eles é 10, 10% de 10 é 1
        }

        // impedindo que eu saia por baixo da tela
        if (meuY < -meuLimite)
        {
            meuY = -meuLimite;
        }
        // impedindo que eu saia por cima da tela
        if (meuY > meuLimite)
        {
            meuY = meuLimite;
        }
    }
}

