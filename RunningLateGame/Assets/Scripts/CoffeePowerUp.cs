/*
 * author: ryan lin
 * date: 15/8/2024
 * description: script to handle coffee power up behaviour
 */

public class CoffeePowerUp : CommonInteractable
{
    /// <summary>
    ///     how much to increase the player's speed by in m/2
    /// </summary>
    public float speedBoost;

    /// <summary>
    ///     the interaction prompt for the player
    /// </summary>
    public string InteractionPrompt => "Press [E] to drink coffee";

    /// <summary>
    ///     to call the add speed function from the game manager
    /// </summary>
    public override void Interact()
    {
        GameManager.Instance.AddSpeed(speedBoost);
        Destroy(gameObject);
    }
}