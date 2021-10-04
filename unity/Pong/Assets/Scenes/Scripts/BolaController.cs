using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class BolaController : MonoBehaviour
{   // Criando a variavel para saber quem é o meu rigidbody
    public Rigidbody2D meuRB;
    private Vector2 minhaVelocidade;

    public float velocidade = 5f;
    public float limiteHorizontal = 12f;

    public AudioClip boing;
    public Transform transformCamera;
    public float delay = 2f;

    public bool jogoIniciado = false;
    // Start is called before the first frame update
    void Start()
    {   // Passando a velocidade para minha velocidade
        // minhaVelocidade.x = velocidade;
        // minhaVelocidade.y = velocidade;


    }

    // Update is called once per frame
    void Update()
    {


        // iniciando a bola com delay

        //diminuindo o valor do delay
        delay -= Time.deltaTime;

        //checando se o delay chegou a 0 para entao iniciar o jogo
        if (delay <= 0 && jogoIniciado == false)
        {
            // alterar o valor da variavel de controle
            jogoIniciado = true;

            //iniciando o jogo

            //tentando gerar um valor aleatorio
            int direcao = Random.Range(0, 4);

            if (direcao == 0)
            {
                minhaVelocidade.x = velocidade;
                minhaVelocidade.y = velocidade;
            }
            else if (direcao == 1)
            {
                minhaVelocidade.x = -velocidade;
                minhaVelocidade.y = velocidade;
            }
            else if (direcao == 2)
            {
                minhaVelocidade.x = -velocidade;
                minhaVelocidade.y = -velocidade;
            }
            else
            {
                minhaVelocidade.x = velocidade;
                minhaVelocidade.y = -velocidade;
            }
            // Adicionado velocidade para a esquerda
            meuRB.velocity = minhaVelocidade;

        }


        // checando se a bola saiu da tela
        if (transform.position.x > limiteHorizontal || transform.position.x < -limiteHorizontal)
        {
            // recarregando a minha cena
            SceneManager.LoadScene("Jogo");
        }
    }
    //criando o meu evento de colisao
    private void OnCollisionEnter2D(Collision2D collision)
    {
        // falando oi para com quem eu colodir
        AudioSource.PlayClipAtPoint(boing, transformCamera.position);
    }
}
